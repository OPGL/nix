_: {
  homeManager.wayland.windowManager.hyprland.settings = {
    # Program variables
    "$terminal" = "kitty";
    "$fileManager" = "nautilus";
    "$mainMod" = "SUPER";

    bind = [
      # Screenshots with notifications
      ", PRINT, exec, grim - | wl-copy -t image/png && notify-send 'Screenshot' 'Fullscreen copied to clipboard'"
      "$mainMod, PRINT, exec, grim -g \"$(slurp -d)\" - | wl-copy -t image/png && notify-send 'Screenshot' 'Selected area copied to clipboard'"
      "$mainMod SHIFT, S, exec, grim -g \"$(slurp)\" - | wl-copy -t image/png"

      # Application launcher
      "$mainMod, R, exec, rofi -show drun"

      # Core controls
      "$mainMod, Q, exec, $terminal"
      "$mainMod, C, killactive"
      "$mainMod, M, exit"
      "$mainMod, E, exec, $fileManager"
      "$mainMod, V, togglefloating"
      "$mainMod, F, fullscreen"
      "$mainMod, P, pseudo" # Dwindle layout
      "$mainMod, J, togglesplit" # Dwindle layout

      # Focus navigation
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      # Workspace management
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # Window movement between workspaces
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      # Workspace navigation with mouse
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
    ];

    # Mouse bindings
    bindm = [
      "$mainMod, mouse:272, movewindow" # Left click
      "$mainMod, mouse:273, resizewindow" # Right click
    ];
  };
}
