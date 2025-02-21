{pkgs, ...}: {
  homeManager.home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
    nautilus
    libnotify
    pavucontrol
    obsidian
  ];
}
