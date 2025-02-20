{pkgs, ...}: {
  homeManager.wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "pl";
    };
    exec-once = [
      "${pkgs.waybar}/bin/waybar"
      "hyprctl setcursor size 24"
      "${pkgs.polkit_gnome}/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
      "${pkgs.udiskie}/bin/udiskie"
    ];
  };
}
