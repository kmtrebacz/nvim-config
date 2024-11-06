local lualine = require('lualine')

local colors = {
     bg       = '#3c3836',
     fg       = '#ebdbb2',
     yellow   = '#fabd2f',
     cyan     = '#8ec07c',
     darkblue = '#49503b',
     green    = '#b8bb26',
     orange   = '#fe8019',
     violet   = '#d3869b',
     magenta  = '#b12686',
     blue     = '#83a598',
     red      = '#fb4934',
}

local config = {
     options = {
          icons_enabled = false,
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
               statusline = {},
               winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = true,
          refresh = {
               statusline = 1000,
               tabline = 1000,
               winbar = 1000,
          },
          theme = {
               normal = { c = { fg = colors.fg, bg = colors.bg } },
               inactive = { c = { fg = colors.fg, bg = colors.bg } },
          }
     },
     sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
     },
     inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
     },
     tabline = {},
     winbar = {},
     inactive_winbar = {},
     extensions = {}
}

local conditions = {
     buffer_not_empty = function()
          return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
     end,
     hide_in_width = function()
          return vim.fn.winwidth(0) > 80
     end,
     check_git_workspace = function()
          local filepath = vim.fn.expand('%:p:h')
          local gitdir = vim.fn.finddir('.git', filepath .. ';')
          return gitdir and #gitdir > 0 and #gitdir < #filepath
     end,
}

local function ins_left(component)
     table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
     table.insert(config.sections.lualine_x, component)
end


ins_left { 
     'mode',
     color = function()
          local mode_color = {
               n = colors.red,
               i = colors.green,
               v = colors.blue,
               [''] = colors.blue,
               V = colors.blue,
               c = colors.magenta,
               no = colors.red,
               s = colors.orange,
               S = colors.orange,
               [''] = colors.orange,
               ic = colors.yellow,
               R = colors.violet,
               Rv = colors.violet,
               cv = colors.red,
               ce = colors.red,
               r = colors.cyan,
               rm = colors.cyan,
               ['r?'] = colors.cyan,
               ['!'] = colors.red,
               t = colors.red,
          }
          return { fg = mode_color[vim.fn.mode()] }
     end,
}

ins_left {
     'filename',
     cond = conditions.buffer_not_empty,
}

ins_left { 'location' }

ins_left { 'progress' }

ins_left {
     'diagnostics',
     sources = { 'nvim_diagnostic' },
     symbols = { error = ' ', warn = ' ', info = ' ' },
     diagnostics_color = {
          error = { fg = colors.red },
          warn = { fg = colors.yellow },
          info = { fg = colors.cyan },
     },
}

ins_right {
     'o:encoding',
     fmt = string.upper,
     cond = conditions.hide_in_width,
}

ins_right {
     'fileformat',
     fmt = string.upper,
     icons_enabled = false,
}

local function diff_source()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns then
    return {
      added = gitsigns.added,
      modified = gitsigns.changed,
      removed = gitsigns.removed
    }
  end
end

ins_right {
     'diff',
     symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
     diff_color = {
          added = { fg = colors.green },
          modified = { fg = colors.orange },
          removed = { fg = colors.red },
     },
     cond = conditions.hide_in_width,
     source = diff_source,
}

ins_right {
     'branch',
     symbols = ' ',
     color = { gui = 'bold' }
}


lualine.setup(config)
