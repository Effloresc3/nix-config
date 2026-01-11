{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
    ./keymaps.nix
    ./languages.nix
    ./telescope.nix
    ./gitsigns.nix
    ./whichkey.nix
    ./autocmds.nix
    ./blink.nix
    ./mini.nix
    ./treesitter.nix
  ];
  programs.nvf = {
    enable = true;
    settings.vim = {
      options = {
        softtabstop = 4;
        smarttab = true;
        updatetime = 300;
        shiftwidth = 4;
        tabstop = 4;
        expandtab = true;
        smartindent = false;
        list = true;
        listchars = "tab:» ,trail:·,nbsp:␣";
        scrolloff = 10;
        confirm = true;
      };
      theme.enable = true;
      theme.name = "everforest";
      theme.style = "medium";
      extraPackages = with pkgs; [
        tree-sitter
      ];
      statusline.lualine.enable = true;
      snippets.luasnip.enable = true;
      visuals.nvim-web-devicons.enable = true;

      diagnostics.config = {
        signs = {
          error = "󰅚 ";
          warn = "󰀪 ";
          info = "󰋽 ";
          hint = "󰌶 ";
        };
      };
    };
  };
}
