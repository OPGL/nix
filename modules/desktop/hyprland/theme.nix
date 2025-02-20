{config, ...}: let
  inherit (config.stylix.base16Scheme) base00 base02 base08;
  inherit (config.stylix.cursor) size name;
in {
  homeManager.wayland.windowManager.hyprland.settings = {
    general = {
      border_size = 2;
      gaps_in = 4;
      gaps_out = 8;
      "col.active_border" = "rgb(${base08})";
      "col.inactive_border" = "rgb(${base02})";
    };

    decoration = {
      shadow.enabled = false;
      dim_special = 0.0;
      rounding = 12;
      blur = {
        size = 8;
        passes = 3;
        noise = 0.033;
        popups = true;
        new_optimizations = true;
      };
    };

    animations = {
      first_launch_animation = false;
      bezier = ["a, 0, 0, 0, 1" "b, 0, 1, 0, 1"];
      animation = [
        "windows, 1, 2, a, popin"
        "fade, 1, 5, default"
        "border, 1, 5, default"
      ];
    };

    misc = {
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      font_family = "Hurmit Nerd Font";
      background_color = "rgb(${base00})";
    };

    env = [
      "XCURSOR_THEME, ${toString name}"
      "XCURSOR_SIZE, ${toString size}"
    ];
  };
}
