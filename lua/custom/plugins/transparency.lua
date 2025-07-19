-- Transparency support
return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  opts = {
    groups = { -- table: default groups
      "Normal",
      "NormalNC",
      "Comment",
      "Constant",
      "Special",
      "Identifier",
      "Statement",
      "PreProc",
      "Type",
      "Underlined",
      "Todo",
      "String",
      "Function",
      "Conditional",
      "Repeat",
      "Operator",
      "Structure",
      "LineNr",
      "Tree",
      "NonText",
      "SignColumn",
      "CursorLineNr",
      "EndOfBuffer",
    },
    extra_groups = { -- table: additional groups that should be cleared
      "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
      "NvimTreeNormal", -- NvimTree
      "NeoTreeNormal", -- NeoTree
      "NeoTreeNormalNC",
    },
    exclude_groups = {}, -- table: groups you don't want to clear
  },
  config = function(_, opts)
    require("transparent").setup(opts)
    
    -- Keymaps for toggling transparency
    vim.keymap.set("n", "<leader>tt", "<cmd>TransparentToggle<CR>", { desc = "Toggle Transparency" })
    
    -- Auto-enable transparency (optional)
    -- require("transparent").clear_prefix("BufferLine")
    -- require("transparent").clear_prefix("NvimTree")
  end,
}
