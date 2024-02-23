require('lualine').setup {
     options = {
          icons_enabled = true,
          theme         = 'auto',
          component_separators = {
               left = '',
               right = '',
          },
          section_separators = {
               left = '',
               right = '',
          },
          disabled_filetypes = {
               statusline = {},
               winbar = {},
          },
          ignore_focus         = {},
          always_divide_middle = true,
          globalstatus         = true,
          refresh = {
               statusline = 1000,
               tabline    = 1000,
               winbar     = 1000,
          }
     },
     sections = {
          lualine_a = {'mode'},
          lualine_b = {'filesize', 'filename'},
          lualine_c = {'location', 'progress'},
          lualine_x = {'encoding', 'fileformat'},
          lualine_y = {'diagnostics', 'diff', 'branch'},
          lualine_z = {''}
     },
}
