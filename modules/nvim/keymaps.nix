{...}: {
  programs.nvf = {
    settings.vim = {
      globals.mapleader = " ";

      keymaps = [
        {
          key = "<Esc>";
          action = "<cmd>nohlsearch<CR>";
          mode = "n";
          desc = "Clear search highlights";
        }
        {
          key = "<leader>m";
          action = "<cmd>Man<CR>";
          mode = "n";
          desc = "Open manual";
        }
        {
          key = "<leader>dv";
          action = "<cmd>vnew<CR>";
          mode = "n";
          desc = "Do vertical split";
        }
        {
          key = "<C-h>";
          action = "<C-w><C-h>";
          mode = "n";
          desc = "Move focus to left window";
        }
        {
          key = "<C-l>";
          action = "<C-w><C-l>";
          mode = "n";
          desc = "Move focus to right window";
        }
        {
          key = "<C-j>";
          action = "<C-w><C-j>";
          mode = "n";
          desc = "Move focus to lower window";
        }
        {
          key = "<C-k>";
          action = "<C-w><C-k>";
          mode = "n";
          desc = "Move focus to upper window";
        }
        {
          key = "<leader>q";
          action = "<cmd>lua vim.diagnostic.setloclist()<CR>";
          mode = "n";
          desc = "Open diagnostic Quickfix";
        }
        {
          key = "<leader>e";
          action = "<cmd>Ex<CR>";
          mode = "n";
          desc = "Open Project View";
        }

        # Move lines in Visual Mode
        {
          key = "J";
          action = ":m '>+1<CR>gv=gv";
          mode = "v";
          desc = "Move block down";
        }
        {
          key = "K";
          action = ":m '<-2<CR>gv=gv";
          mode = "v";
          desc = "Move block up";
        }

        # Keep cursor in place when joining lines
        {
          key = "J";
          action = "mzJ`z";
          mode = "n";
        }

        # Centered scrolling
        {
          key = "<C-d>";
          action = "<C-d>zz";
          mode = "n";
        }
        {
          key = "<C-u>";
          action = "<C-u>zz";
          mode = "n";
        }

        # Centered search results
        {
          key = "n";
          action = "nzzzv";
          mode = "n";
        }
        {
          key = "N";
          action = "Nzzzv";
          mode = "n";
        }

        # Auto-indent paragraph while keeping cursor position
        {
          key = "=ap";
          action = "ma=ap'a";
          mode = "n";
        }

        # LSP Restart
        {
          key = "<leader>zig";
          action = "<cmd>LspRestart<cr>";
          mode = "n";
        }

        # Paste over without losing buffer
        {
          key = "<leader>p";
          action = "\"_dP";
          mode = "x";
        }

        # System Clipboard
        {
          key = "<leader>y";
          action = "\"+y";
          mode = ["n" "v"];
          desc = "Copy to system clipboard";
        }
        {
          key = "<leader>Y";
          action = "\"+Y";
          mode = "n";
          desc = "Copy line to system clipboard";
        }

        # Delete to void register
        {
          key = "<leader>d";
          action = "\"_d";
          mode = ["n" "v"];
        }

        # Disable Ex mode
        {
          key = "Q";
          action = "<nop>";
          mode = "n";
        }

        # Quickfix & Location List Navigation
        {
          key = "<leader>cn";
          action = "<cmd>cnext<CR>zz";
          mode = "n";
        }
        {
          key = "<leader>cp";
          action = "<cmd>cprev<CR>zz";
          mode = "n";
        }
        {
          key = "<leader>k";
          action = "<cmd>lnext<CR>zz";
          mode = "n";
        }
        {
          key = "<leader>j";
          action = "<cmd>lprev<CR>zz";
          mode = "n";
        }

        # Global Search and Replace (Current word)
        {
          key = "<leader>srw";
          action = ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>";
          mode = "n";
          desc = "Search and replace word under cursor";
        }
      ];
    };
  };
}
