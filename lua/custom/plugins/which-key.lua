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

    -- Yanky
    { "<leader>y", group = "yank" },
    { "<leader>yp", "<cmd>Telescope yank_history<CR>", desc = "Yank History" },

    -- Dashboard
    { "<leader>d", function() require("dashboard").open() end, desc = "Dashboard" },

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

    -- Format
    { "<leader>cf", function() vim.lsp.buf.format({ async = true }) end, desc = "Format Code" },
  },
  opts = {
    -- your config options here if needed
  },
}
