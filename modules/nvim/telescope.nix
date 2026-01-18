{...}: {
  programs.nvf.settings.vim = {
    telescope = {
      enable = true;
      setupOpts.defaults = {
        path_display = ["tail"];
      };
      mappings = {
        gitFiles = "<leader>tsp";
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
