require("gruvbox").setup({
     terminal_colors = true,
     undercurl = true,
     underline = false,
     bold = true,
     italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
     },
     strikethrough = true,
     invert_selection = false,
     invert_signs = false,
     invert_tabline = false,
     invert_intend_guides = false,
     inverse = true, -- invert background for search, diffs, statuslines and errors
     contrast = "soft", -- can be "hard", "soft" or empty string
     palette_overrides = {},
     overrides = {},
     dim_inactive = false,
     transparent_mode = true,
})

vim.cmd("colorscheme gruvbox")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
