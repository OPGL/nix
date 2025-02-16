{pkgs, ...}: {
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  homeManager = {
    home.packages = [pkgs.wl-clipboard];
  };
}
