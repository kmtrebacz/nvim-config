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
               statusline = 1,
               tabline = 1,
               winbar = 1,
          },
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

local function ins_b(component)
     table.insert(config.sections.lualine_b, component)
end

local function ins_c(component)
     table.insert(config.sections.lualine_c, component)
end

local function ins_y(component)
     table.insert(config.sections.lualine_y, component)
end

local function ins_x(component)
     table.insert(config.sections.lualine_x, component)
end


ins_b {
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_b { 'location' }

ins_b { 'progress' }

ins_b {
     'diagnostics',
     sources = { 'nvim_diagnostic' },
     symbols = { error = ' ', warn = ' ', info = ' ' },
     diagnostics_color = {
          error = { fg = colors.red },
          warn = { fg = colors.yellow },
          info = { fg = colors.cyan },
     },
}

ins_c {
     function()
          return '%='
     end,
}

ins_c {
     'filename',
     cond = conditions.buffer_not_empty,
}

ins_y {
     'branch',
     symbols = ' ',
     color = { gui = 'bold' }
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

ins_y {
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

ins_y {
     'o:encoding',
     fmt = string.upper,
     cond = conditions.hide_in_width,
}

ins_y {
     'fileformat',
     fmt = string.upper,
     icons_enabled = false,
}

lualine.setup(config)
