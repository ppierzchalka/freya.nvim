-- NvimTree (if you prefer it over netrw)
return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 30,
                side = "left"
            },
            renderer = {
                group_empty = true
            },
            filters = {
                dotfiles = false
            }
        })
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function(data)
                if vim.fn.isdirectory(data.file) == 1 then
                    vim.cmd.cd(data.file)
                    require("nvim-tree.api").tree.open()
                end
            end
        })
    end,
    keys = {{
        "<leader>e",
        "<cmd>NvimTreeToggle<CR>",
        desc = "Toggle File Explorer"
    }}
}
