-- file browser
return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("file_browser")
    -- Optional keymap
    vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", { desc = "File Browser" })
  end,
}
