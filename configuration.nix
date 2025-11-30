{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    (builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz")
  ];

  boot.kernelPackages = pkgs.linuxPackages_zen;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = false;
  virtualisation.docker.enable = true;
  
  services.xserver.enable = true; 
  services.xserver.displayManager.lightdm.enable = false;
  
  users.users.ton_user = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ];
    shell = pkgs.fish; 
  };
  
  environment.systemPackages = with pkgs; [
    wl-clipboard
  ];

  home-manager.users.ton_user = import ./home.nix;
  system.stateVersion = "25.11";
}
