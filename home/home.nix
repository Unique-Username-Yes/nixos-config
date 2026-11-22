{ config, pkgs, ... }:
{
  home.username = "mero";
  home.homeDirectory = "/home/mero";
  home.packages = with pkgs; [
    firefox
  ];

  programs.bash = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-config";
    };
  };

  home.stateVersion = "26.05";
}
