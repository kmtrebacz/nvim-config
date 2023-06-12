require("mason").setup()
require("mason-lspconfig").setup()

local on_attach = function(_, _)
     vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- lua
require("lspconfig").lua_ls.setup {
     on_attach =  on_attach,
     capabilities = capabilities,
}

-- html
require("lspconfig").html.setup {
     on_attach =  on_attach,
     capabilities = capabilities,
}

-- js 
require("lspconfig").vtsls.setup {
     on_attach =  on_attach,
     capabilities = capabilities,
}

-- python
require("lspconfig").pylsp.setup {
     on_attach =  on_attach,
     capabilities = capabilities,
}

-- c++
require("lspconfig").clangd.setup {
     on_attach =  on_attach,
     capabilities = capabilities,
}

-- arduino_language_server
require("lspconfig").arduino_language_server.setup {
     on_attach =  on_attach,
     capabilities = capabilities,
}

-- php - intelephense
require("lspconfig").intelephense.setup {
     on_attach =  on_attach,
     capabilities = capabilities,
}