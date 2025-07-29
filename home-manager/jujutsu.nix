{ config, pkgs, ... }:
{
  programs.jujutsu = {
    enable = true;
    # settings map to config.toml
    settings = {
      user = {
        name = "Tucker Hall";
        email = "tucker@tuckerhall.me";
      };
    };
  };
}
