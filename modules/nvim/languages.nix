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
        format.enable = true;
        lsp.enable = true;
      };
      nix = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
      };
      lua = {
        enable = true;
        lsp.enable = true;
      };
    };
  };
}
