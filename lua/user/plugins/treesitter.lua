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

    matchup = {
        enable = true,
    },
}

treesitter.setup(options)
install.compilers = { "x86_64-w64-mingw32-clang" }

vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "" })
