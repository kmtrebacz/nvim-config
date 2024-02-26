require('nightcity').setup({
    style = 'kabuki',
    terminal_colors = true,
    invert_colors = {
        cursor = true,
        diff = false,
        error = true,
        search = true,
        selection = false,
        signs = false,
        statusline = true,
        tabline = false,
    },
    font_style = {
        comments = { italic = false },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        search = { bold = true },
    },
    plugins = { default = true },
     on_highlights = function(groups, c)
          groups.String = { fg = c.none, bg = c.none }
     end
})

vim.cmd.colorscheme('nightcity')
