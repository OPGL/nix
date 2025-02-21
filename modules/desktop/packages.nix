{pkgs, ...}: {
  programs.firefox.enable = true;
  environment.systemPackages = with pkgs; [
    git
    vesktop
    jetbrains.idea-community
  ];
}
