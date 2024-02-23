require("mason").setup()
require("mason-lspconfig").setup()

local on_attach = function(_, _)
     vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
     capabilities = capabilities,
}

-- html
require("lspconfig").html.setup {
     capabilities = capabilities,
}

-- js 
require("lspconfig").vtsls.setup {
     capabilities = capabilities,
}

-- python
require("lspconfig").pylsp.setup {
     capabilities = capabilities,
}

-- c++
require("lspconfig").clangd.setup {
     capabilities = capabilities,
}

-- arduino_language_server
require("lspconfig").arduino_language_server.setup {
     capabilities = capabilities,
}

-- php - intelephense
require("lspconfig").intelephense.setup {
     capabilities = capabilities,
}

-- rust
require("lspconfig").rust_analyzer.setup {
    capabilities = capabilities,
}
