_: {
  zramSwap = {
    enable = true;
    memoryPercent = 25;
    priority = 10;
  };
  boot.kernel.sysctl = {
    "vm.swappiness" = 180;
    "vm.page-cluster" = 0;
    "vm.watermark_scaling_factor" = 125;
    "watermark_boost_factor" = 0;
  };
}
