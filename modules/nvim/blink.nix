{...}: {
  programs.nvf.settings.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      setupOpts = {
        keymap = {preset = "default";};
        appearance = {
          use_nerd_font_icons = true;
        };
        snippets = {
          preset = "luasnip";
        };
      };
    };
  };
}
