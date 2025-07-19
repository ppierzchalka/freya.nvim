-- Frontend LSP servers
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local servers = opts.servers or {}
    
    -- Frontend LSP servers
    servers.ts_ls = {
      settings = {
        typescript = {
          preferences = {
            importModuleSpecifier = "relative"
          }
        }
      }
    }
    
    servers.html = {}
    servers.cssls = {}
    servers.jsonls = {}
    servers.eslint = {
      settings = {
        workingDirectories = { mode = "auto" }
      }
    }
    
    opts.servers = servers
    return opts
  end,
}
