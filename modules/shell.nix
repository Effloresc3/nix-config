{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
    };
    ohMyZsh = {
      enable = true;
      plugins = ["git"];
      theme = "";
    };
    promptInit = ''
      fpath+=( "${pkgs.pure-prompt}/share/zsh/site-functions" )
      autoload -U promptinit; promptinit
      prompt pure
    '';
  };
}
