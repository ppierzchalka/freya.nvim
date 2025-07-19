-- Project management with modern API
return {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    opts = {
        detection_methods = {"lsp", "pattern"},
        patterns = {".git", "package.json", "tsconfig.json", "Makefile", "README.md"},
        -- Use modern vim.lsp API
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
}
