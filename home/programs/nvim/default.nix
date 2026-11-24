{ config, pkgs, ... }:
let
  src = "${config.home.homeDirectory}/nixos-config/home/programs/nvim/config";
in 
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    sideloadInitLua = true;
    extraPackages = with pkgs; [
      bash-language-server
      lua-language-server
      pyright
    ];
  };

  home.packages = with pkgs; [
    git
    wl-clipboard
    ripgrep
  ];

  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink src;
}
