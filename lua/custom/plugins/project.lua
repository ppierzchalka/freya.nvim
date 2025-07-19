return {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    opts = {
        detection_methods = {"lsp", "pattern"},
        patterns = {".git", "package.json", "tsconfig.json", "Makefile", "README.md"}
    },
    config = function(_, opts)
        require("project_nvim").setup(opts)
        require("telescope").load_extension("projects")
    end
}
