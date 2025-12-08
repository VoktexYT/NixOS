{ config, lib, pkgs, ... }:

{
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";    
    LIBVA_DRIVER_NAME = "iHD";  
    EDITOR = "nvim";
  };

  environment.etc."sway/config".source = ../app-configs/sway/config;
  environment.etc."xdg/foot/foot.ini".source = ../app-configs/foot/foot.ini;
  environment.etc."xdg/waybar/config.jsonc".source = ../app-configs/waybar/config.jsonc;
  environment.etc."xdg/waybar/style.css".source = ../app-configs/waybar/style.css;
}
