require("neo-tree").setup({
     close_if_last_window = false,
     enable_git_status = true,
     enable_diagnostics = true,
     enable_normal_mode_for_inputs = false,
     open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
     sort_case_insensitive = false,
     sort_function = nil , 
     default_component_configs = {
       container = {
         enable_character_fade = true
       },
       indent = {
         indent_size = 2,
         padding = 1,
         with_markers = true,
         indent_marker = "│",
         last_indent_marker = "└",
         highlight = "NeoTreeIndentMarker",
         with_expanders = true,
         expander_collapsed = "",
         expander_expanded = "",
         expander_highlight = "NeoTreeExpander",
       },
       icon = {
         folder_closed = "",
         folder_open = "",
         folder_empty = "󰜌",
         default = "",
         highlight = "NeoTreeFileIcon"
       },
       modified = {
         symbol = "[+]",
         highlight = "NeoTreeModified",
       },
       name = {
         trailing_slash = false,
         use_git_status_colors = true,
         highlight = "NeoTreeFileName",
       },
       git_status = {
         symbols = {
           -- Change type
           added     = "✚",
           modified  = "",
           deleted   = "✖",
           renamed   = "󰁕",
           -- Status type
           untracked = "",
           ignored   = "",
           unstaged  = "󰄱",
           staged    = "",
           conflict  = "",
         }
       },
     },
     commands = {},
     window = {
       position = "left",
       width = 40,
       mapping_options = {
         noremap = true,
         nowait = true,
       },
       mappings = {
         ["<2-LeftMouse>"] = "open",
         ["<cr>"] = "open",
         ["<esc>"] = "cancel",
         ["P"] = { "toggle_preview", config = { use_float = true } },
         ["a"] = { 
           "add",
           config = {
             show_path = "none"
           }
         },
         ["A"] = "add_directory",
         ["d"] = "delete",
         ["r"] = "rename",
         ["c"] = "copy",
         ["m"] = "move",
         ["R"] = "refresh",
         ["?"] = "show_help",
         ["<"] = "prev_source",
         [">"] = "next_source",
       }
     },
     nesting_rules = {},
     filesystem = {
       filtered_items = {
         visible = false,
         hide_dotfiles = true,
         hide_gitignored = true,
         hide_hidden = false,
       },
       follow_current_file = {
         enabled = false,
         leave_dirs_open = false,
       },
       group_empty_dirs = false,
       hijack_netrw_behavior = "open_default",
       use_libuv_file_watcher = false,
     },
     git_status = {
       window = {
         position = "float",
         mappings = {
           ["A"]  = "git_add_all",
           ["gu"] = "git_unstage_file",
           ["ga"] = "git_add_file",
           ["gr"] = "git_revert_file",
           ["gc"] = "git_commit",
           ["gp"] = "git_push",
           ["gg"] = "git_commit_and_push",
         }
       }
     },
     source_selector = {
          winbar = true,
          statusline = false
      }
   })