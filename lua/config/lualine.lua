require('lualine').setup {
     options = {
          icons_enabled = true,
          theme = auto,
     },
     sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'filename', 'filetype'},
          lualine_c = {'diff', 'diagnostics'},
          lualine_x = {'encoding', 'fileformat'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
     }
}