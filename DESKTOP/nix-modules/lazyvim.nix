{ config, lib, pkgs, user, ... }:

let
  themePath = ../app-configs/themes/${config.customTheme};
in
{
  system.activationScripts.installLazyVim = {
    text = ''
      SOURCE="${themePath}/nvim"
      TARGET="/home/${user}/.config/nvim"

      echo -e "\033[93m ### INIT LAZY VIM FOR ${user}  ### \033[0m"

      mkdir -p /home/${user}/.config

      if [ -d "$TARGET" ]; then
        rm -rf "$TARGET"
      fi

      cp -rL "$SOURCE" "$TARGET"
      chown -R ${user}:users "$TARGET"
      chmod -R u+w "$TARGET"
    '';
  };
}
