require('deadcolumn').setup({
     modes = function(mode)
        return mode
     end,
     blending = {
          colorcode = '#1F2430',
          hlgroup = { 'NonText', 'bg' },
          threshold = 0,
     },
})
