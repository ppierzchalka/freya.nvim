-- Mason tool installer enhancements
return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    ensure_installed = {
      -- Frontend formatters
      "prettierd",
      "prettier",
      -- Additional LSPs for frontend
      "typescript-language-server",
      "eslint-lsp",
      "html-lsp",
      "css-lsp",
      "json-lsp",
      -- Other useful tools
      "lua-language-server",
      "stylua",
    },
    auto_update = true,
    run_on_start = true,
  },
}
