{ config, lib, pkgs, ... }:

{
  documentation.enable = false;
  documentation.nixos.enable = false;
  documentation.man.enable = false;
  documentation.info.enable = false;
  documentation.doc.enable = false;

  networking.networkmanager.enable = true;
  systemd.services.sysremd-udev-settle.enable = false;
  systemd.network.wait-online.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
  services.timesyncd.enable = true;
  systemd.services.systemd-timesyncd.wantedBy = [ "sysinit.target" ];
  security.rtkit.enable = true;
  
  services.pulseaudio.enable = false;
  systemd.services.display-manager.serviceConfig = {
	GPUSheldulingPolicy = "fifo";
	GPUSheldulingPriority = 99;
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true; 
  };

  services.openssh.enable = true;
  programs.ssh.startAgent = true;

  services.journald.extraConfig = ''
  	Storage=none
	ForwardToSyslog=no
	ForwardToKMsg=no
	ForwardToConsole=no
	ForwardToWall=no
  '';

  systemd.coredump.enable = false;
  boot.initrd.systemd.enable = true;
}
