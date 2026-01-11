{...}: {
  programs.nvf.settings.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      setupOpts = {
        keymap = {preset = "default";};
        snippets = {
          preset = "luasnip";
        };
      };
    };
  };
}
