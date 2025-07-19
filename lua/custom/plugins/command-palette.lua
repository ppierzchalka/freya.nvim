-- command palette
return {
  "dhruvmanila/telescope-command-palette.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        command_palette = {
          -- You can configure categories or commands here if needed
        },
      },
    })
    telescope.load_extension("command_palette")

    -- Optional: keymap to open the command palette
    vim.keymap.set("n", "<leader>p", ":Telescope command_palette<CR>", { desc = "Command Palette" })
  end,
}
