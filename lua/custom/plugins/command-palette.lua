-- Command palette using telescope's built-in commands
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>p", "<cmd>Telescope commands<cr>", desc = "Command Palette" },
    { "<leader>P", "<cmd>Telescope command_history<cr>", desc = "Command History" },
  },
  -- This extends the existing telescope config rather than replacing it
  opts = function(_, opts)
    opts = opts or {}
    opts.defaults = opts.defaults or {}
    opts.defaults.layout_strategy = opts.defaults.layout_strategy or "horizontal"
    opts.defaults.layout_config = opts.defaults.layout_config or {}
    opts.defaults.layout_config.prompt_position = "top"
    return opts
  end,
}
