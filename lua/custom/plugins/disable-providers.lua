-- Disable unnecessary providers to clean up warnings
return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  config = function()
    -- Disable unused providers to clean up :checkhealth warnings
    vim.g.loaded_perl_provider = 0      -- Disable Perl provider
    vim.g.loaded_ruby_provider = 0      -- Disable Ruby provider
    vim.g.loaded_python3_provider = 0   -- Disable Python provider (we don't need it)
    
    -- Keep Node.js provider enabled for frontend development
    -- vim.g.loaded_node_provider = 0   -- KEEP ENABLED for Node.js/frontend work
    
    -- This runs after nvim-treesitter is loaded
  end,
}
