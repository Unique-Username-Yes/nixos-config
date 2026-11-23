{ config, pkgs, ... }:
let
  src = "${config.home.homeDirectory}/nixos-config/home/programs/fastfetch/config";
in 
{
  home.packages = with pkgs; [
    fastfetch
  ];

  xdg.configFile."fastfetch".source = config.lib.file.mkOutOfStoreSymlink src;
}
