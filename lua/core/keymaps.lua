vim.g.mapleader = ' '
vim.g.maplocalleader = ' '  

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.cursorline = true
vim.cmd('highlight CursorLine cterm=NONE ctermbg=205 guibg=#383C4A')