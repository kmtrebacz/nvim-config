vim.o.termguicolors = true
require('onedark').setup {
     style = 'warm'
}
require('onedark').load()
vim.cmd [[ colorscheme onedark ]]