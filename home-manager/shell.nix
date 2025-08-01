{ config, pkgs, ... }:
{
  programs = {
    zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "kubectl"
          "docker"
          "docker-compose"
          "golang"
          "python"
        ];
        theme = "agnoster";
      };
    };
  };
}
