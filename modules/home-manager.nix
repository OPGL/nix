{inputs, ...}: {
  imports = [inputs.home-manager.nixosModules.default];
  programs.fuse.userAllowOther = true;
  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    backupFileExtension = "hm-bak";
    users.nix = {
      programs.home-manager.enable = true;
      systemd.user.startServices = "sd-switch";
      home = {
        username = "nix";
        stateVersion = "24.11";
        homeDirectory = "/home/nix";
      };
    };
  };
}
