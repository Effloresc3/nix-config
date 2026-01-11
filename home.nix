{pkgs, ...}: {
  imports = [
    ./modules/nvim/nvim.nix
    ./modules/git.nix
  ];
  home.username = "seren";
  home.homeDirectory = "/home/seren";

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
  ];

  programs.home-manager.enable = true;
}
