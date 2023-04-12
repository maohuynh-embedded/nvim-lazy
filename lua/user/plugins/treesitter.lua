local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then
    return
end

local status_ok, install = pcall(require, "nvim-treesitter.install")
if not status_ok then
    return
end

local options = {
    -- ensure_installed = {
    --   "lua",
    --   "c",
    --   "cpp",
    --   "cmake",
    --   "python",
    --   "yaml",
    --   "json",
    --   "bash"
    -- },

    highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = true,
    },

    indent = {
        enable = true,
    },

    rainbow = {
        enable = true,
        -- Which query to use for finding delimiters
        -- query = 'rainbow-parens',
        -- Highlight the entire buffer all at once
        -- strategy = require 'ts-rainbow.strategy.global',

        extended_mode = true,
        max_file_lines = nil,
        colors = {
            '#458588',
            '#b16286',
            '#cc241d',
            '#d65d0e',
            '#458588',
            '#b16286',
            '#cc241d',
            '#d65d0e',
            '#458588',
            '#b16286',
            '#cc241d',
            '#d65d0e',
            '#458588',
            '#b16286',
            '#cc241d',
            '#d65d0e',
        },
        termcolors = {
            'brown',
            'Darkblue',
            'darkgray',
            'darkgreen',
            'darkcyan',
            'darkred',
            'darkmagenta',
            'brown',
            'gray',
            'black',
            'darkmagenta',
            'Darkblue',
            'darkgreen',
            'darkcyan',
            'darkred',
            'red',
        },
    },
    matchup = {
        enable = true,
    },
}

treesitter.setup(options)
install.compilers = { "x86_64-w64-mingw32-clang", "gcc", "g++" }

vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "" })
