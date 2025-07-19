-- Blink.cmp enhancements and fixes
return {
  "saghen/blink.cmp",
  build = function()
    -- Force download/build the fuzzy matcher binary
    require('blink.cmp')._download_binaries()
  end,
  opts = function(_, opts)
    -- Ensure fuzzy implementation is set to use rust if available
    opts.fuzzy = opts.fuzzy or {}
    opts.fuzzy.implementation = 'rust'
    return opts
  end,
}
