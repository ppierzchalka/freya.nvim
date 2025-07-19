-- Additional treesitter parsers
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    -- Add missing parsers
    vim.list_extend(opts.ensure_installed, {
      "regex",  -- For noice.nvim regex highlighting
      "gitignore",
      "dockerfile",
      "sql",
    })
    return opts
  end,
}
