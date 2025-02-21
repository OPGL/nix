_: {
  virtualisation.docker.enable = true;
  users.users.opgl.extraGroups = ["docker"];
  virtualisation.docker.storageDriver = "btrfs";
}
