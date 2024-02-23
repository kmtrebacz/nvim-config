require('luasnip.loaders.from_vscode').lazy_load()
require('core.plugin_config.completions.consts')

local cmp = require('cmp')

cmp.setup({
     formatting = {
          format = function(entry, vim_item)
               vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)

               vim_item.menu = ({
                    buffer   = "[Buffer]",
                    nvim_lsp = "[LSP]",
                    nvim_lua = "[Lua]",
                    latex_symbols = "[LaTeX]",
               })[entry.source.name]
               return vim_item
          end
     },
     mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-o>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>']  = cmp.mapping.confirm({ select = true }),
     }),
     snippet = {
          expand = function(args)
               require('luasnip').lsp_expand(args.body)
          end,
     },
     sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
     }, {
          { name = 'buffer' },
     }),
     experimental = {
          ghost_text = true,
     },
})
