{pkgs, ...}: {
  stylix = {
    enable = true;
    base16Scheme = {
      base00 = "343746"; # Background
      base01 = "282A36"; # Lighter background
      base02 = "434753"; # Selection background
      base03 = "606570"; # Comments
      base04 = "8E8E8E"; # Dark foreground
      base05 = "D8DEE9"; # Default foreground
      base06 = "E5E9F0"; # Light foreground
      base07 = "ECEFF4"; # Light background
      base08 = "FF6961"; # Red
      base09 = "FAC898"; # Orange
      base0A = "FFD8A8"; # Yellow
      base0B = "9ACD9A"; # Green
      base0C = "E6B0AA"; # Cyan
      base0D = "AAEAAA"; # Blue
      base0E = "D4A5A5"; # Magenta
      base0F = "FF6B6B"; # Brown
    };
    autoEnable = false;
    image = ./.;
    polarity = "dark";
    targets.console.enable = true;
  };
  homeManager.stylix = {
    targets = {
      gtk.enable = true;
      rofi.enable = true;
      vesktop.enable = true;
      mako.enable = true;
    };
    iconTheme = {
      enable = true;
      package = pkgs.tela-icon-theme;
      light = "Tela";
      dark = "Tela-dark";
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };
}
