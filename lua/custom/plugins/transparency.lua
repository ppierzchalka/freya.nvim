-- Transparency support (using manual highlight setting in plugin/after/transparency.lua)
-- This plugin is kept minimal for the toggle functionality only
return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  opts = {
    enable = false, -- Don't auto-enable, we handle it manually
    groups = {},
    extra_groups = {},
    exclude_groups = {},
  },
  config = function(_, opts)
    require("transparent").setup(opts)
    
    -- Keymaps for toggling transparency
    vim.keymap.set("n", "<leader>tt", function()
      require("transparent").toggle()
      -- Reapply our manual transparency after toggle
      dofile(vim.fn.stdpath("config") .. "/plugin/after/transparency.lua")
    end, { desc = "Toggle Transparency" })
  end,
}
