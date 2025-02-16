{pkgs, ...}: {
  programs.steam.enable = true;
  environment = {
    systemPackages = with pkgs; [
      adwsteamgtk
      protonup
    ];
    sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/$USER/.steam/root/compatibilitytools.d";
    };
  };
}
