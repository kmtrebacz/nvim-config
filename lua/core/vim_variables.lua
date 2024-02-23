vim.g.mapleader = ' '
vim.g.maplocalleader = ' '  
vim.g.tagbar_ctags_bin = 'C:/ctags/ctags.exe'

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = false
vim.opt.autoread = true

vim.opt.tabstop = 5
vim.opt.shiftwidth = 5
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.cursorline = false

vim.opt.list = true
vim.opt.listchars = {
     eol = ' ',
     space = '·',
     extends = '«',
     precedes = '»',
}
