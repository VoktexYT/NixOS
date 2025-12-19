{ config, lib, pkgs, ... }:

{
  programs.sway.enable = true;
  
  services.dbus.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ 
      pkgs.xdg-desktop-portal-wlr 
      pkgs.xdg-desktop-portal-gtk 
    ];
  };

  services.displayManager.ly = {
    enable = true;
    settings = {
      animation = "colormix";
      clock = "%c";
      hide_borders = false;
      vi_mode = false;
    };
  };

  services.displayManager.defaultSession = "sway";

  systemd.user.services = {
    wayland-session-env = {
      description = "Set Wayland environment variables";
      wantedBy = [ "default.target" ];
      serviceConfig = {
        Type = "oneshot";
        ExecStart = "${pkgs.systemd}/bin/systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP";
      };
    };
  };

  systemd.services.display-manager.serviceConfig.ExecStartPre = [
    "${pkgs.coreutils}/bin/printf '\\e]P01a1b26\\e]P7c0caf5\\e]P1f7768e\\e]P29ece6a\\e]P3e0af68\\e]P47aa2f7\\e]P5bb9af7\\e]P67dcfff'"
  ];
}
