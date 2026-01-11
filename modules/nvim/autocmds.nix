{lib, ...}: {
  programs.nvf.settings.vim = {
    autocmds = [
      {
        event = ["FileType"];
        pattern = ["nix" "lua" "javascript" "html"];
        callback = lib.generators.mkLuaInline ''
          function()
            vim.opt_local.shiftwidth = 2
            vim.opt_local.tabstop = 2
          end
        '';
      }
      {
        event = ["CursorHold" "CursorHoldI"];
        group = "lsp_document_highlight";
        callback = lib.generators.mkLuaInline ''
          function()
            local clients = vim.lsp.get_clients({ bufnr = 0 })
            for _, client in ipairs(clients) do
              if client.supports_method("textDocument/documentHighlight") then
                vim.lsp.buf.document_highlight()
                return
              end
            end
          end
        '';
      }
      {
        event = ["CursorMoved" "CursorMovedI"];
        group = "lsp_document_highlight";
        callback = lib.generators.mkLuaInline "function() vim.lsp.buf.clear_references() end";
      }
      {
        event = ["TextYankPost"];
        group = "kickstart-highlight-yank";
        callback = lib.generators.mkLuaInline "function() vim.hl.on_yank() end";
      }
    ];
    augroups = [
      {
        name = "lsp_document_highlight";
        clear = true;
      }
      {
        name = "kickstart-highlight-yank";
        clear = true;
      }
    ];
  };
}
