-- Which Key (command suggestions on <space>)
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    -- Telescope
    { "<leader>f", group = "find" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Grep Files" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help" },
    { "<leader>fp", "<cmd>Telescope projects<CR>", desc = "Projects" },

    -- NvimTree
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Explorer" },

    -- Git (using kickstart's <leader>h prefix for hunks)
    { "<leader>h", group = "git hunks" },
    { "<leader>hs", desc = "Stage hunk" },
    { "<leader>hr", desc = "Reset hunk" },
    { "<leader>hS", desc = "Stage buffer" },
    { "<leader>hR", desc = "Reset buffer" },
    { "<leader>hu", desc = "Undo stage hunk" },
    { "<leader>hp", desc = "Preview hunk" },
    { "<leader>hb", desc = "Blame line" },
    { "<leader>hd", desc = "Diff against index" },
    { "<leader>hD", desc = "Diff against last commit" },

    -- Toggle
    { "<leader>t", group = "toggle" },
    { "<leader>tt", desc = "Toggle Transparency" },
    { "<leader>tb", desc = "Toggle git blame line" },
    { "<leader>tD", desc = "Toggle git show deleted" },

    -- Command Palette
    { "<leader>p", desc = "Command Palette" },
    { "<leader>P", desc = "Command History" },

    -- Yanky
    { "<leader>y", group = "yank" },
    { "<leader>yp", "<cmd>Telescope yank_history<CR>", desc = "Yank History" },

    -- Dashboard
    { "<leader>d", "<cmd>Dashboard<cr>", desc = "Dashboard" },

    -- Buffer management (override kickstart's problematic buffer mapping)
    { "<leader><leader>", function()
      local buffers = vim.fn.getbufinfo({buflisted = 1})
      if #buffers > 1 then
        require('telescope.builtin').buffers()
      else
        vim.notify("No additional buffers to show", vim.log.levels.INFO)
      end
    end, desc = "Switch Buffer" },

    -- AI/Copilot
    { "<leader>a", group = "ai" },
    { "<leader>ah", desc = "Copilot Help actions" },
    { "<leader>ap", desc = "Copilot Prompt actions" },
    { "<leader>ae", desc = "Copilot Explain code" },
    { "<leader>at", desc = "Copilot Generate tests" },
    { "<leader>ar", desc = "Copilot Review code" },
    { "<leader>aR", desc = "Copilot Refactor code" },
    { "<leader>an", desc = "Copilot Better naming" },
    { "<leader>av", desc = "Copilot Visual chat" },
    { "<leader>ax", desc = "Copilot Inline chat" },
    { "<leader>ai", desc = "Copilot Ask input" },
    { "<leader>am", desc = "Copilot Commit message" },
    { "<leader>aM", desc = "Copilot Commit staged" },
    { "<leader>aq", desc = "Copilot Quick chat" },
    { "<leader>ad", desc = "Copilot Debug info" },
    { "<leader>af", desc = "Copilot Fix diagnostic" },
    { "<leader>al", desc = "Copilot Clear chat" },

    -- Session management
    { "<leader>s", group = "session" },
    { "<leader>ss", "<cmd>SessionManager save_current_session<CR>", desc = "Save Session" },
    { "<leader>sl", "<cmd>SessionManager load_session<CR>", desc = "Load Session" },
    { "<leader>sd", "<cmd>SessionManager delete_session<CR>", desc = "Delete Session" },
    { "<leader>sr", "<cmd>SessionManager load_current_dir_session<CR>", desc = "Restore Session" },

    -- Format
    { "<leader>cf", function() vim.lsp.buf.format({ async = true }) end, desc = "Format Code" },
  },
  opts = {
    preset = "modern",
  },
}
