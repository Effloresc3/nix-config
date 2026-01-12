{pkgs, ...}: {
  programs.nvf.settings.vim = {
    treesitter = {
      enable = true;
      indent.enable = true;
      highlight.enable = true;
      grammars = [
        pkgs.vimPlugins.nvim-treesitter.builtGrammars.typescript
      ];
    };
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
