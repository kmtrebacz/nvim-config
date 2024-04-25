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
    use 'savq/melange-nvim'
    use 'eduardo-antunes/plainline'
    use 'nvim-tree/nvim-web-devicons'
    -- mason
    use "williamboman/mason.nvim"
    use  "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    -- completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind.nvim'
    --  snip
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'
    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    -- telescope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'BurntSushi/ripgrep'
    -- neotree
    use "nvim-neo-tree/neo-tree.nvim"
    use "MunifTanjim/nui.nvim"

    use 'lewis6991/gitsigns.nvim'
    use 'glepnir/dashboard-nvim'
    -- noice
    use "folke/noice.nvim"
    use "rcarriga/nvim-notify"

    use 'preservim/tagbar'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
