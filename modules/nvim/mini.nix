{...}: {
  programs.nvf.settings.vim = {
    mini = {
      icons.enable = true;
      ai.enable = true;
      ai.setupOpts = {n_lines = 500;};

      surround.enable = true;

      statusline = {
        enable = true;
      };
    };
  };
}
