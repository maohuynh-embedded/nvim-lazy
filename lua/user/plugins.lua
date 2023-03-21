return {
    -- Icon source (need to be placed at the end) --------------
    {
        'ryanoasis/vim-devicons',
        'nvim-tree/nvim-web-devicons',
    },
    {
        -- Start up screen
        'goolord/alpha-nvim',
        config = function()
            require("user.plugins.alpha")
        end,
    },
    {
        -- Boost startup time
        'lewis6991/impatient.nvim',
        config = function()
            require("user.plugins.impatient")
        end,
    },
    -- {
    --     'tpope/vim-fugitive',
    --     'rbong/vim-flog',
    --     cmd = {"Flog", "Flogsplit"}
    -- },
    {
        -- Colorscheme manager
        'folke/tokyonight.nvim',
        config = function()
            require("user.plugins.tokyonight")
        end,
    },

    -- Change font size
    {
        'tenxsoydev/size-matters.nvim',
        cmd = { "FontSizeUp 1", "FontSizeDown 1" },
        config = function()
            require("user.plugins.scalefont")
        end,
    },

    -- File explorer
    {
        'nvim-tree/nvim-tree.lua',
        tag = 'nightly',
        config = function()
            require("user.plugins.nvimtree")
        end,
        --  cmd = 'NvimTreeToogle',
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    },

    -- Status line
    {
        'nvim-lualine/lualine.nvim',
        event = "BufRead",
        config = function()
            require("user.plugins.lualine")
        end,
    },

    -- Barbar manage buffer
    {
        'romgrk/barbar.nvim',
        event = "BufRead",
        config = function()
            require("user.plugins.bufferline")
        end,
    },

    -- Tab explorer
    {
        'matbme/JABS.nvim',
        event = "BufRead",
        config = function()
            require("user.plugins.jabs")
        end,
    },

    {
        -- Git icon
        'lewis6991/gitsigns.nvim',
        event = "BufRead",
        config = function()
            require("user.plugins.gitsigns")
        end,
    },
    {
        -- Git quick command
        'kdheepak/lazygit.nvim',
        cmd = "LazyGit",
        config = function()
            require("user.plugins.lazygit")
        end,
    },

    {
        'rcarriga/nvim-notify',
        event = "BufRead",
        config = function()
            require("user.plugins.notify")
        end
    },

    {
        -- Smooth scrolling
        'karb94/neoscroll.nvim',
        event = "BufRead",
        config = function()
            require("user.plugins.neoscroll")
        end,
    },

    -- Git watch diffview
    {
        'sindrets/diffview.nvim',
        pin = true,
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("user.plugins.diffview")
        end,
        cmd = { "DiffviewOpen", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    },

    -- Quick edit parentheses
    {
        'kylechui/nvim-surround',
        event = "InsertEnter",
        config = function()
            require("user.plugins.surround")
        end,
    },

    -- Tabout
    {
        'abecodes/tabout.nvim',
        event = "InsertEnter",
        dependencies = {
            "nvim-treesitter",
            "nvim-cmp",
        },
        config = function()
            require("user.plugins.tabout")
        end

    },

    -- Auto pair
    {
        'windwp/nvim-autopairs',
        config = function()
            require("user.plugins.autopairs")
        end,
        event = { "InsertEnter" },
    },

    -- Quick move
    {
        'fedepujol/move.nvim',
        event = "BufRead",
    },

    -- Quick scope move word
    {
        'phaazon/hop.nvim',
        event = "BufRead",
        config = function()
            require("hop").setup {}
        end
    },

    -- Extract argument in bracket
    {
        'foosoft/vim-argwrap',
        cmd = { "ArgWrap" },
    },

    -- Quick comment
    {
        'numToStr/Comment.nvim',
        event = "BufRead",
        config = function()
            require("user.plugins.comment")
        end,
    },

    -- Smart column
    -- {
    --     enable = false,
    --     "m4xshen/smartcolumn.nvim",
    --     event = "BufRead",
    --     config = function ()
    --         require("user.plugins.smartcolumn")
    --     end
    -- },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- File browser
            'nvim-telescope/telescope-file-browser.nvim',
            -- Project
            'nvim-telescope/telescope-project.nvim',
            -- UI for telescope
            'nvim-telescope/telescope-ui-select.nvim',
            -- Builtin/extension picker for telescope
            'keyvchan/telescope-find-pickers.nvim',
            -- Menu management
            'octarect/telescope-menu.nvim',
        },
        cmd = "Telescope",
        config = function()
            require("user.plugins.telescope")
        end,
    },

    -- Icon picker
    {
        'ziontee113/icon-picker.nvim',
        cmd = { "PickEverything", "IconPickerNormal", "PickEverythingInsert" },
        config = function()
            require("user.plugins.icon-picker")
        end
    },

    -- Session manager
    {
        'Shatur/neovim-session-manager',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require("user.plugins.session")
        end
    },

    -- Float terminal
    {
        'voldikss/vim-floaterm',
        cmd = { "FloatermToggle", "FloatermNew", "FloatermShow" },
        config = function()
            require("user.plugins.floaterm")
        end,
    },

    -- {
    --     'akinsho/toggleterm.nvim',
    --     version = "*",
    --     config = function ()
    --         require("user.plugins.toggleterm")
    --     end
    -- },

    -- Search box
    {
        'VonHeikemen/searchbox.nvim',
        dependencies = {
            'MunifTanjim/nui.nvim',
        },
        event = "BufRead",
        config = function()
            require("user.plugins.searchbox")
        end,
    },

    -- Code highlight
    {
        'nvim-treesitter/nvim-treesitter',
        pin = true,
        event = "BufRead",
        build = ":TSUpdate",
        config = function()
            require("user.plugins.treesitter")
        end,
    },

    -- Bracket color
    {
        -- 'p00f/nvim-ts-rainbow',
        -- dependencies = { 'nvim-treesitter/nvim-treesitter' },
    },

    {
        -- 'HiPhish/nvim-ts-rainbow2',
        -- dependencies = { 'nvim-treesitter/nvim-treesitter' },
    },

    {
        "jackMort/ChatGPT.nvim",
        config = function()
            require("user.plugins.gpt")
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },

    -- {
    --     'Pocco81/auto-save.nvim',
    --     config = function ()
    --         require("user.plugins.autosave")
    --     end
    -- },

    {
        -- "kevinhwang91/nvim-bqf",
        -- event = { "BufRead", "BufNew" },
        -- dependencies = { 'nvim-treesitter/nvim-treesitter' },
        -- config = function()
        --     require("user.plugins.bqf")
        -- end
    },

    -- Align lines
    {
        'Vonr/align.nvim',
        event = "BufRead",
    },

    -- Quick highlight word
    {
        'RRethy/vim-illuminate',
        event = "BufRead",
        config = function()
            require("user.plugins.illuminate")
        end
    },

    -- Highlight color into hex color
    {
        'NvChad/nvim-colorizer.lua',
        event = "BufRead",
        config = function()
            require("user.plugins.colorizer")
        end
    },

    -- Indent blank line
    {
        'lukas-reineke/indent-blankline.nvim',
        event  = "BufRead",
        config = function()
            require("user.plugins.blankline")
        end
    },

    -- Todo comment
    {
        'folke/todo-comments.nvim',
        event = "BufRead",
        config = function()
            require("user.plugins.todo")
        end,
    },

    {
        'folke/trouble.nvim',
        cmd = "TroubleToggle",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("user.plugins.trouble")
        end
    },

    -- LSP installer
    {
        'williamboman/mason.nvim',
        config = function()
            require("user.plugins.mason")
        end,
        cmd = "Mason",
    },

    -- LSP config manager
    {
        'neovim/nvim-lspconfig',
        config = function()
            require("user.plugins.lspconfig")
            require("user.plugins.lspserver")
        end,
    },

    {
        'Djancyp/lsp-range-format',
        event = "BufRead",
    },

    -- LSP Neodev
    {
        'folke/neodev.nvim',
        ft = "lua",
        config = function()
            require("user.plugins.neodev")
        end
    },
    -- LSP Saga
    {
        'glepnir/lspsaga.nvim',
        event = 'BufRead',
        config = function()
            require("user.plugins.lspsaga")
        end,
        dependencies = {
            'anuvyklack/windows.nvim',
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons'
        },
    },

    -- Display lsp progress loading
    {
        "j-hui/fidget.nvim", -- Display LSP status messages in a floating window
        event = "BufRead",
        config = function()
            require("user.plugins.fidget")
        end
    },

    -- BUG: Neovide haven't supported for disable blur background
    -- Drop snow in dashboard
    -- {
    --     "folke/drop.nvim",
    --     event = "VimEnter",
    --     config = function()
    --         require("user.plugins.drop")
    --     end,
    -- },

    -- BUG: Neovide haven't supported for this plugin
    -- Show message popup, LSP progress, popup commandline
    -- {
    --     'folke/noice.nvim',
    --     event = "BufRead",
    --     dependencies = {
    --         "MunifTanjim/nui.nvim",
    --         "rcarriga/nvim-notify",
    --     },
    --     config = function()
    --         require("user.plugins.noice")
    --     end,
    -- },

    -- load luasnips + cmp related in insert mode only
    {
        'rafamadriz/friendly-snippets',
        event = "InsertEnter",
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = "friendly-snippets",
        config = function()
            require("user.plugins.cmp")
        end,
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = { "friendly-snippets", "nvim-cmp" },
        config = function()
            require("user.plugins.luasnip")
        end,
    },
    {
        'saadparwaiz1/cmp_luasnip',
        dependencies = "LuaSnip",
    },
    {
        'hrsh7th/cmp-nvim-lua',
        dependencies = "cmp_luasnip",
    },
    {
        'hrsh7th/cmp-nvim-lsp',
        dependencies = "cmp-nvim-lua",
    },
    {
        'hrsh7th/cmp-cmdline',
        dependencies = "cmp-nvim-lua",
    },
    {
        'hrsh7th/cmp-buffer',
        dependencies = "cmp-nvim-lsp",
    },
    {
        'hrsh7th/cmp-path',
        dependencies = "cmp-buffer",
    },
    {
        'lukas-reineke/cmp-under-comparator',
        dependencies = "cmp_luasnip",
    },
}
