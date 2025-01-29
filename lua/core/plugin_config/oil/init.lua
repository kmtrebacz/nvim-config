require("oil").setup({
     default_file_explorer = true,
     columns = {
          "icon",
          "permissions",
     },
     view_options = {
          show_hidden = true,
     }
})

require('core.plugin_config.oil.keybinds')
