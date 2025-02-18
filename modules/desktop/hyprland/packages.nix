{pkgs, ...}: {
  homeManager.home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
    nautilus
    kitty
    rofi-wayland
    libnotify
    pavucontrol
  ];
}
