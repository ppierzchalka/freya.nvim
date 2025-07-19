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
          "                                                                ",
          "███████╗██████╗ ███████╗██╗   ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗",
          "██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝██╔══██╗██║   ██║██║████╗ ████║",
          "█████╗  ██████╔╝█████╗   ╚████╔╝ ███████║██║   ██║██║██╔████╔██║",
          "██╔══╝  ██╔══██╗██╔══╝    ╚██╔╝  ██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║",
          "██║     ██║  ██║███████╗   ██║   ██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║",
          "╚═╝     ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
          "                                                                ",
        },
        center = {
          -- File operations
          { icon = " ", desc = "New File",      key = "n", action = "enew" },
          { icon = " ", desc = "Find File",     key = "f", action = "Telescope find_files" },
          { icon = " ", desc = "Recent Files",  key = "r", action = "Telescope oldfiles" },
          { icon = " ", desc = "Find Text",     key = "g", action = "Telescope live_grep" },
          { icon = " ", desc = "File Browser",  key = "b", action = "Telescope file_browser" },

          -- Project & Navigation
          { icon = " ", desc = "Projects",      key = "p", action = "Telescope projects" },
          { icon = " ", desc = "File Tree",     key = "e", action = "NvimTreeToggle" },

          -- Configuration & Help
          { icon = " ", desc = "Config",        key = "c", action = "Telescope find_files cwd=~/.config/nvim" },
          { icon = " ", desc = "Command Pal.",  key = "P", action = "Telescope commands" },
          { icon = " ", desc = "Keymaps",       key = "k", action = "Telescope keymaps" },
          { icon = " ", desc = "Help",          key = "h", action = "Telescope help_tags" },

          -- Git & Development
          { icon = " ", desc = "Git Status",    key = "G", action = "Telescope git_status" },
          { icon = " ", desc = "Diagnostics",   key = "d", action = "Telescope diagnostics" },

          -- Session & Tools
          { icon = "󰒲 ", desc = "Lazy",          key = "l", action = "Lazy" },
          { icon = " ", desc = "Mason",         key = "m", action = "Mason" },
          { icon = " ", desc = "Quit",          key = "q", action = "qa" },
        },
      },
    })
  end,
}