{
  pkgs,
  inputs,
  ...
}: {
  environment.shells = with pkgs; [zsh];
  environment.systemPackages = with pkgs; [
    lua-language-server
    nodejs
    gcc
    gnumake
    fd
    ripgrep
    wl-gammactl
    inputs.zen-browser.packages."${stdenv.hostPlatform.system}".default
    ghostty
    kdePackages.qtstyleplugin-kvantum
    pure-prompt
    git
    qt6.qtmultimedia
    plasma-panel-colorizer
    kara
    tree
    tealdeer
    bat
    zellij
  ];
}
