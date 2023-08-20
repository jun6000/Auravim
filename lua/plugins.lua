-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    use 'rstacruz/vim-closer' -- Closes brackets
    use 'mfussenegger/nvim-lint' -- nvim-lint
    use "nvim-lua/plenary.nvim" -- Plenary
    use 'nvim-tree/nvim-web-devicons' -- File icons
    use 'lewis6991/gitsigns.nvim' -- git status
    use 'tpope/vim-sleuth' -- Auto-detect tabwidth and shiftwidth

    -- Load on an autocommand event
    use {'andymass/vim-matchup', event = 'VimEnter'} -- Extends %

    -- Mason
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        run = ":MasonUpdate", -- :MasonUpdate updates registry contents
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Aura theme
    use {
        'daltonmenezes/aura-theme',
        rtp = 'packages/neovim',
        config = function()
            vim.cmd [[ colorscheme aura-soft-dark ]]
        end,
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup()
        end
    }

    -- Nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    -- Autocompletion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-emoji',
            'hrsh7th/cmp-cmdline',
            'rafamadriz/friendly-snippets',
        },
    }

    --[[ -- Tabnine
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp',
    } ]]

    -- Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Toggleterm
    use {
        'akinsho/toggleterm.nvim',
        tag = "*",
        config = function()
            require('toggleterm').setup()
        end
    }

    -- Bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons',
    }

    -- Startup dashboard
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = [[require('dash')]],
        requires = {'nvim-tree/nvim-web-devicons'}
    }
end)
