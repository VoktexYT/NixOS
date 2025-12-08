{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # --- Development Tools ---
    gcc       
    git
    gnumake  
    nodejs  
    
    # --- LazyVim Requirements ---
    ripgrep 
    fd     
    fzf   
    tree-sitter 
    curl       
    unzip     
    wl-clipboard 

    # --- Terminal & Shell ---
    foot        
    fastfetch  
    
    # --- Graphical Apps ---
    firefox     
    qutebrowser 

    # -- Windows Components --
    swaybg
  ];


  # =================================================================
  # PROGRAMS & COMPATIBILITY
  # =================================================================
  programs.fish.enable = true;
  programs.zoxide.enable = true; 

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true; 
  };

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc
    zlib
    fuse3
    icu
    nss
    openssl
    curl
    expat
  ];

  nixpkgs.config.allowUnfree = true;

}
