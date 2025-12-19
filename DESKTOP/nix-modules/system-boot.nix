{ config, lib, pkgs, ... }:

{
  boot = {
    loader.timeout = 0;
    consoleLogLevel = 0;
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_zen;

  
  boot.kernelParams = [
    "i915.enable_guc=3" 
    "quiet"
    "splash"
    "boot.shell_on_fail"
    "loglevel=3"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
  ];

  boot.kernel.sysctl = {
    "vm.swappiness" = 10; 
    "dev.i915.perf_stream_paranoid" = 0;
  };
}
