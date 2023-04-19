require("telescope").setup()

vim.keymap.set('n', '<c-f>', ':Telescope find_files<CR>')
vim.keymap.set('n', '<c-g>', ':Telescope live_grep<CR>')