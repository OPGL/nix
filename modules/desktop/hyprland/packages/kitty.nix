_: {
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

    extraConfig = ''
      foreground #D8DEE9
      background #1E1F2B
      cursor #FF6961
      cursor_text_color #FFFFFF

      color0  #434753
      color1  #FF6961
      color2  #9ACD9A
      color3  #FAC898
      color4  #AAEAAA
      color5  #D4A5A5
      color6  #E6B0AA
      color7  #B0BEC5

      color8  #606570
      color9  #FF6B6B
      color10 #C3E8C3
      color11 #FFD8A8
      color12 #C5F5C5
      color13 #E8C5C5
      color14 #F0C8C3
      color15 #FFFFFF

      selection_foreground none
      selection_background #434753
      url_color #AAEAAA

      symbol_map U+e000-U+e00a,U+ea60-U+ebeb,U+e0a0-U+e0c8,U+e0ca,U+e0cc-U+e0d7,U+e200-U+e2a9,U+e300-U+e3e3,U+e5fa-U+e6b1,U+e700-U+e7c5,U+ed00-U+efc1,U+f000-U+f2ff,U+f000-U+f2e0,U+f300-U+f372,U+f400-U+f533,U+f0001-U+f1af0 Symbols Nerd Font Mono
    '';
  };
}
