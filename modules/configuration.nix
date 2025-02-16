_: {
  networking.hostName = "nixos";
  users.users.nix = {
    isNormalUser = true;
    extraGroups = ["wheel"];
  };
  time.timeZone = "Europe/Warsaw";
  networking.networkmanager.enable = true;
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
  system.stateVersion = "24.11";
  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
    "pipe-operators"
  ];
}
