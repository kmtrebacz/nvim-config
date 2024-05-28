require("gruvbox").setup({
  bold = false,
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
})

vim.opt.termguicolors = true
vim.cmd.colorscheme 'gruvbox'
