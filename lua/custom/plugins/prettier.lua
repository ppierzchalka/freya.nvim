return {
    "nvimtools/none-ls.nvim",
    dependencies = {"williamboman/mason.nvim"},
    opts = function(_, opts)
        local nls = require("null-ls")
        opts.sources = opts.sources or {}
        vim.list_extend(opts.sources, {nls.builtins.formatting.prettierd -- or nls.builtins.formatting.prettier
        })
    end
}
