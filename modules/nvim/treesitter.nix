{pkgs, ...}: {
  programs.nvf.settings.vim = {
    treesitter = {
      enable = true;
      indent.enable = true;
      grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        nix
        bash
        typescript
      ];
    };
  };
}
