{pkgs, ...}: {
  homeManager.wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "pl";
    };
    exec-once = ["${pkgs.waybar}/bin/waybar"];
  };
}
