{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.services.libvirtd.storagePools;
in {
  options.services.libvirtd.storagePools = lib.mkOption {
    type = lib.types.listOf (lib.types.submodule {
      options = {
        name = lib.mkOption {
          type = lib.types.str;
          description = "Storage pool name";
        };
        path = lib.mkOption {
          type = lib.types.str;
          description = "Path to pool directory";
        };
        autostart = lib.mkOption {
          type = lib.types.bool;
          default = false;
          description = "Enable pool autostart";
        };
      };
    });
    default = [];
  };

  config = lib.mkIf (cfg != []) {
    systemd.tmpfiles.rules = map (pool: "d ${pool.path} 0755 libvirt libvirt -") cfg;

    systemd.services = lib.listToAttrs (map (pool:
      lib.nameValuePair "libvirt-pool-${pool.name}" {
        after = ["libvirtd.service"];
        requires = ["libvirtd.service"];
        serviceConfig = {
          Type = "oneshot";
          RemainAfterExit = true;
          ExecStart = let
            script = pkgs.writeScript "manage-pool-${pool.name}.sh" ''
              #!/bin/sh
              set -euo pipefail

              if ${pkgs.libvirt}/bin/virsh pool-info ${pool.name} >/dev/null 2>&1; then
                ${pkgs.libvirt}/bin/virsh pool-destroy ${pool.name} || true
                ${pkgs.libvirt}/bin/virsh pool-undefine ${pool.name} || true
              fi

              ${pkgs.libvirt}/bin/virsh pool-define-as \
                --name ${pool.name} \
                --type dir \
                --target ${pool.path}

              ${pkgs.libvirt}/bin/virsh pool-autostart \
                ${pool.name} \
                ${lib.optionalString (!pool.autostart) "--disable"}

              ${pkgs.libvirt}/bin/virsh pool-start ${pool.name}
            '';
          in ["${script}"];
        };
        wantedBy = ["multi-user.target"];
      })
    cfg);
  };
}
