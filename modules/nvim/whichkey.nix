{...}: {
  programs.nvf.settings.vim = {
    binds.whichKey = {
      enable = true;
      setupOpts = {
        delay = 0;
      };
    };
  };
}
