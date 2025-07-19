-- ESLint integration via nvim-lint (better than null-ls)
return {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    opts.linters_by_ft = opts.linters_by_ft or {}
    
    -- Add ESLint for JavaScript/TypeScript files
    vim.tbl_extend("force", opts.linters_by_ft, {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      vue = { "eslint_d" },
      svelte = { "eslint_d" },
    })
    
    return opts
  end,
}
