_: {
  services.udisks2.enable = true;
  homeManager.services.udiskie = {
    enable = true;
    tray = "never";
  };
}
