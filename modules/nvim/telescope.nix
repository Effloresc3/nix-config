{...}: {
  programs.nvf.settings.vim = {
    telescope = {
      enable = true;
      mappings = {
        findFiles = "<leader>tsf";
        liveGrep = "<leader>tsg";
        buffers = "<leader><leader>";
        helpTags = "<leader>tsh";
        diagnostics = "<leader>tsd";
        resume = "<leader>tsr";
        lspDocumentSymbols = "gO";
        lspWorkspaceSymbols = "gW";
      };
    };
  };
}
