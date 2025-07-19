-- Smooth scrolling like VSCode
return {
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  keys = {
    { "<C-u>", function() require('neoscroll').ctrl_u({ duration = 250 }) end },
    { "<C-d>", function() require('neoscroll').ctrl_d({ duration = 250 }) end },
    { "<C-b>", function() require('neoscroll').ctrl_b({ duration = 450 }) end },
    { "<C-f>", function() require('neoscroll').ctrl_f({ duration = 450 }) end },
    { "<C-y>", function() require('neoscroll').scroll(-0.1, { move_cursor=false, duration=100 }) end },
    { "<C-e>", function() require('neoscroll').scroll(0.1, { move_cursor=false, duration=100 }) end },
    { "zt", function() require('neoscroll').zt({ half_win_duration = 250 }) end },
    { "zz", function() require('neoscroll').zz({ half_win_duration = 250 }) end },
    { "zb", function() require('neoscroll').zb({ half_win_duration = 250 }) end },
  },
  opts = {
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,       -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,             -- Function to run after the scrolling animation ends
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
  },
}
