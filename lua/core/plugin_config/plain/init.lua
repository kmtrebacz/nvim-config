require("plainline").setup {
     sections = {
          left  = { "mode", "branch", "harpoon_filename", "lsp" },
          right = { "filetype", "fileformat", "percentage", "position" },
     },
     inactive_sections = { left  = { "harpoon_fullpath" }, right = {} },
     provider_opts = { name_filter = true, trad_status = false },
     separator = "   ", -- suggested alternative: " │ "
}
