{...}: {
  programs.git = {
    enable = true;

    settings = {
      user.name = "Effloresc3";
      user.email = "ortizdante2002@gmail.com";
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
