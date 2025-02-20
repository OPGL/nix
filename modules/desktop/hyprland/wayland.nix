_: {
  environment.variables = {
    CLUTTER_BACKEND = "wayland";
    GDK_BACKEND = "wayland,x11,*";
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFORM = "wayland;xcb";
    SDL_VIDEODRIVER = "wayland";
  };
}
