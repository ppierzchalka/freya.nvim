-- Smear Cursor
return {
    "jghauser/smear.nvim",
    dependencies = {"jghauser/smear-cursor.nvim"},
    config = function()
        require("smear").setup()
    end
}
