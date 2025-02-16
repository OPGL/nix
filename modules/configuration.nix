_: {
  networking.hostName = "ds3h-b760m";
  users.users.opgl = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    description = "Dawid Ploch";
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
