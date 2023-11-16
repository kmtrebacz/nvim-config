require("inc_rename").setup()

vim.keymap.set("n", "<c-r>", function()
     return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })