{...}: {
  programs.git = {
    enable = true;
    userName = "Effloresc3";
    userEmail = "ortizdante2002@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      core.editor = "nvim";
    };

    ignores = [
      ".DS_Store"
      "*.swp"
      "result"
    ];
  };
}
