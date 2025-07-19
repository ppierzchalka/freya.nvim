-- Dashboard

return {
      "nvimdev/dashboard-nvim",
      event = "VimEnter",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("dashboard").setup({
          theme = "doom",
          config = {
            header = {
              "███████╗██████╗ ███████╗██╗   ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗"
              "██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝██╔══██╗██║   ██║██║████╗ ████║"
              "█████╗  ██████╔╝█████╗   ╚████╔╝ ███████║██║   ██║██║██╔████╔██║"
              "██╔══╝  ██╔══██╗██╔══╝    ╚██╔╝  ██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║"
              "██║     ██║  ██║███████╗   ██║   ██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║"
              "╚═╝     ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
            },
            center = {
              { icon = " ", desc = "New File", action = "enew" },
              { icon = " ", desc = "Recent Files", action = "Telescope oldfiles" },
            },
          },
        })
      end,
}