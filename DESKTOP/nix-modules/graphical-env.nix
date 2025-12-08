{ config, lib, pkgs, ... }:

{
  programs.sway.enable = true;
  programs.waybar.enable = true;
  
  services.dbus.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ 
      pkgs.xdg-desktop-portal-wlr 
      pkgs.xdg-desktop-portal-gtk 
    ];
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd sway";
        user = "greeter";
      };
    };
  };
}
