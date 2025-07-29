{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Tucker Hall";
    userEmail = "tucker@tuckerhall.me";
  };
}
