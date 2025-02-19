{
  inputs,
  pkgs,
  ...
}: let
  inherit
    (inputs.hyprland.packages.${pkgs.system})
    hyprland
    xdg-desktop-portal-hyprland
    ;
in {
  imports = [
    ./packages.nix
    ./settings.nix
    ./binds.nix
    ./packages/waybar.nix
  ];
  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = [
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
  };
  programs.hyprland = {
    enable = true;
    withUWSM = false;
    package = hyprland;
    portalPackage = xdg-desktop-portal-hyprland;
  };
  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };
  homeManager = {
    home.packages = [
      pkgs.kitty
      pkgs.nerd-fonts.hurmit
    ];
    wayland.windowManager.hyprland = {
      enable = true;
      package = null;
      portalPackage = null;
      plugins = [];
    };
  };
}
