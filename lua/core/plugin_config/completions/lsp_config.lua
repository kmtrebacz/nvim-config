local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
     handlers = {
          function(server_name) -- default handler (optional)
               require("lspconfig")[server_name].setup {
                    capabilities = capabilities
               }
          end,

          ["lua_ls"] = function()
               local lspconfig = require("lspconfig")
               lspconfig.lua_ls.setup {
                    capabilities = capabilities,
                    settings = {
                         Lua = {
                              runtime = { version = "Lua 5.1" },
                              diagnostics = {
                                   globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                              }
                         }
                    }
               }
          end,
     }
})

local on_attach = function(_, _)
     vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end
