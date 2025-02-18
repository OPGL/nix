{pkgs, ...}: {
  homeManager.wayland.windowManager.hyprland.settings = {
    exec-once = ["${pkgs.waybar}/bin/waybar"];
  };
}
