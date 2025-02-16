{
  lib,
  inputs,
  ...
}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
    (lib.mkAliasOptionModule ["homeManager"] ["home-manager" "users" "opgl"])
  ];
  programs.fuse.userAllowOther = true;
  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    backupFileExtension = "hm-bak";
    users.opgl = {
      programs.home-manager.enable = true;
      systemd.user.startServices = "sd-switch";
      home = {
        username = "opgl";
        stateVersion = "24.11";
        homeDirectory = "/home/opgl";
      };
    };
  };
}
