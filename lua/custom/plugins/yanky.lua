-- Yanky
return {
    "gbprod/yanky.nvim",
    opts = {},
    keys = {{
        "p",
        "<Plug>(YankyPutAfter)",
        mode = {"n", "x"}
    }, {
        "P",
        "<Plug>(YankyPutBefore)",
        mode = {"n", "x"}
    }, {
        "y",
        "<Plug>(YankyYank)",
        mode = {"n", "x"}
    }}
}
