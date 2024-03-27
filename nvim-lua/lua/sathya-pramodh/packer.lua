if not vim.g.vscode then
    -- Only required if you have packer configured as `opt`
    vim.cmd [[packadd packer.nvim]]

    return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        use {
            'nvim-telescope/telescope.nvim',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use 'shaunsingh/nord.nvim'
        use('nvim-treesitter/nvim-treesitter', { run = ":TSUpdate" })
        use("theprimeagen/harpoon")
        use 'mbbill/undotree'
        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                { 'rafamadriz/friendly-snippets' },
            }
        }
        use 'tpope/vim-fugitive'
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end

        }
        use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim",
            }
        }

        use({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })
        use 'akinsho/flutter-tools.nvim'
        use 'nvim-lualine/lualine.nvim'
        use { "catppuccin/nvim", as = "catppuccin" }
        use "EdenEast/nightfox.nvim"
        use { "rose-pine/neovim", as = "rose-pine" }
        use {
            "folke/which-key.nvim",
            config = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 300
                require("which-key").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        }
    end)
end
