{config,pkgs,...}:
{
  programs.jujutsu = {
      enable = true;
      settings = {
        user = {
          name = "Tucker Hall";
          email = "tucker@tuckerhall.me";
        };
      };
    };
}