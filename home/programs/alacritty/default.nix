{ config, pkgs, ... }:
let
  src = "${config.home.homeDirectory}/nixos-config/home/programs/alacritty/config";
in 
{
  programs.alacritty.enable = true;

  xdg.configFile."alacritty".source = config.lib.file.mkOutOfStoreSymlink src;
}
