{config, ...}: {
  homeManager.programs.kitty = {
    enable = true;
    font.name = "Hurmit Nerd Font";
    settings = {
      font_size = 10.0;
      window_padding_width = 8;
      default_pointer_shape = "arrow";
      mouse_hide_wait = 0.0;
      cursor_shape = "beam";
      cursor_shape_unfocused = "beam";
      cursor_blink_interval = 0;
      cursor_beam_thickness = 1.5;
      cursor_trail = 1;
      cursor_trail_decay = "0.1 0.1";
      cursor_trail_start_threshold = 0;
      scrollback_lines = 4096;
      url_style = "straight";
      enable_audio_bell = "no";
      confirm_os_window_close = 0;
    };

    extraConfig = let
      inherit
        (config.stylix.base16Scheme)
        base01
        base02
        base03
        base05
        base07
        base08
        base09
        base0A
        base0B
        base0C
        base0D
        base0E
        ;
    in ''
      foreground #${base05}
      background #${base01}
      cursor #${base08}
      cursor_text_color #${base07}

      color0  #${base02}
      color1  #${base08}
      color2  #${base0B}
      color3  #${base0A}
      color4  #${base0D}
      color5  #${base0E}
      color6  #${base0C}
      color7  #${base05}

      color8  #${base03}
      color9  #${base09}
      color10 #${base0B}
      color11 #${base0A}
      color12 #${base0D}
      color13 #${base0E}
      color14 #${base0C}
      color15 #${base07}

      selection_foreground none
      selection_background #${base02}
      url_color #${base0D}

      symbol_map U+e000-U+e00a,U+ea60-U+ebeb,U+e0a0-U+e0c8,U+e0ca,U+e0cc-U+e0d7,U+e200-U+e2a9,U+e300-U+e3e3,U+e5fa-U+e6b1,U+e700-U+e7c5,U+ed00-U+efc1,U+f000-U+f2ff,U+f000-U+f2e0,U+f300-U+f372,U+f400-U+f533,U+f0001-U+f1af0 Symbols Nerd Font Mono
    '';
  };
}
