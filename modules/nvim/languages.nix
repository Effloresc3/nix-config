{...}: {
  programs.nvf.settings.vim = {
    lsp = {
      formatOnSave = true;
      enable = true;
      mappings = {
        renameSymbol = "grn";
        codeAction = "gra";
        goToDefinition = "grd";
        goToDeclaration = "grD";
        listImplementations = "gri";
        goToType = "grt";
        listReferences = "grr";
      };
    };
    languages = {
      enableFormat = true;
      ts = {
        enable = true;
        treesitter.enable = true;
        format.enable = true;
        lsp.enable = true;
      };
      nix = {
        treesitter.enable = true;
        enable = true;
        format.enable = true;
        lsp.enable = true;
      };
      lua = {
        treesitter.enable = true;
        enable = true;
        lsp.enable = true;
      };
    };
  };
}
