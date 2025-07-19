-- Project management with fixed deprecated API and session management
return {
    {
        -- Using a fork that fixes the deprecated vim.lsp.buf_get_clients() issue
        "coffebar/project.nvim",
        event = "VeryLazy",
        opts = {
            detection_methods = {"lsp", "pattern"},
            patterns = {".git", "package.json", "tsconfig.json", "Makefile", "README.md"},
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = true
            },
        },
        config = function(_, opts)
            require("project_nvim").setup(opts)
            require("telescope").load_extension("projects")
        end
    },
    {
        -- Session manager for automatic session saving/restoring per project
        "Shatur/neovim-session-manager",
        event = "VeryLazy",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local config = require('session_manager.config')
            require('session_manager').setup({
                autoload_mode = config.AutoloadMode.CurrentDir,
                autosave_last_session = true,
                autosave_ignore_not_normal = true,
                autosave_ignore_dirs = {},
                autosave_ignore_filetypes = {
                    'gitcommit',
                    'gitrebase',
                },
            })
        end,
    }
}
