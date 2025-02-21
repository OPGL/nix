{pkgs, ...}: {
  homeManager.home.packages = with pkgs; [
    prismlauncher
  ];
}
