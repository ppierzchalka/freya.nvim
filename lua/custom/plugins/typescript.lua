-- lua/custom/plugins/typescript.lua
return {
  "jose-elias-alvarez/typescript.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  config = function()
    local ts_utils = require("typescript")
    ts_utils.setup({
      disable_commands = false,
      debug = false,
      go_to_source_definition = {
        fallback = true,
      },
      -- add more options if needed
    })

    -- Setup LSP for TS with typescript.nvim handlers
    local nvim_lsp = require("lspconfig")
    nvim_lsp.tsserver.setup({
      on_attach = function(client, bufnr)
        ts_utils.setup_client(client)
      end,
    })
  end,
}
