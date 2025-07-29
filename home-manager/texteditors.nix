{  config, pkgs, ... }:
{

  programs = {
    nixvim.enable = true;
    vim = {
      enable = true;
    };
  };
}
