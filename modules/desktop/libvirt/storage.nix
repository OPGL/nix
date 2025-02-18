_: {
  services.libvirtd.storagePools = [
    {
      name = "test";
      path = "/test";
      autostart = true;
    }
  ];
}
