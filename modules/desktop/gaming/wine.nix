{pkgs, ...}: {
  programs.gamemode = {
    enable = true;
    enableRenice = true;
  };
  programs.gamescope.enable = true;
  environment.systemPackages = with pkgs; [
    mangohud
    gamescope
    wineWowPackages.waylandFull
    winetricks
  ];
}
