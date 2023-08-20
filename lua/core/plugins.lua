local ensure_packer = function()
     local fn = vim.fn
     local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
     if fn.empty(fn.glob(install_path)) > 0 then
       fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
       vim.cmd [[packadd packer.nvim]]
       return true
     end
     return false
   end
   
   local packer_bootstrap = ensure_packer()
   
   return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'sainnhe/sonokai'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'akinsho/toggleterm.nvim'
    use 'yamatsum/nvim-cursorline'
    use 'kevinhwang91/nvim-hlslens'
    use 'preservim/tagbar'
    -- mason
    use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    }
    -- completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    --  snip
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'
    -- telescope
    use {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
    }
    -- neotree
    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
    }
    use 'lewis6991/gitsigns.nvim'
    use 'glepnir/dashboard-nvim'

     -- Automatically set up your configuration after cloning packer.nvim
     -- Put this at the end after all plugins
     if packer_bootstrap then
       require('packer').sync()
     end
   end)
