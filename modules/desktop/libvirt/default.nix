_: {
  imports = [
    ./lib/storage.nix
    ./storage.nix
  ];
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["opgl"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
