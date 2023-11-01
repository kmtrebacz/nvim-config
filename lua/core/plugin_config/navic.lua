require('nvim-navic').setup {
    icons = {
        File = '  ',
        Module = '  ',
        Namespace = '  ',
        Package = '  ',
        Class = '  ',
        Method = '  ',
        Property = '  ',
        Field = '  ',
        Constructor = '  ',
        Enum = '  ',
        Interface = '  ',
        Function = '  ',
        Variable = '  ',
        Constant = '  ',
        String = '  ',
        Number = '  ',
        Boolean = '  ',
        Array = '  ',
        Object = '  ',
        Key = '  ',
        Null = '  ',
        EnumMember = '  ',
        Struct = '  ',
        Event = '  ',
        Operator = '  ',
        TypeParameter = '  '
    },
    lsp = {
        auto_attach = true,
        preference = nil,
    },
    highlight = true,
    separator = " >",
    depth_limit = 10,
    depth_limit_indicator = "..",
    safe_output = true,
    lazy_update_context = false,
    click = false
}

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"