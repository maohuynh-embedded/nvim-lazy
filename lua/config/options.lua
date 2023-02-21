local options = {
    clipboard = "unnamedplus",
    -- Configuration mouse usage
    mouse = "a",
    mousemodel = "popup",
    completeopt = { "menu", "menuone", "noselect" },

    -- Tab
    smarttab = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    expandtab = true,
    list = true,

    -- Disable backup
    backup = false,
    wb = false,
    swapfile = false,

    -- Text editor
    smartcase = true,
    ignorecase = true,
    fileencoding = "utf-8",
    textwidth = 80,
    cursorline = true,

    -- Limited height box suggestion
    pumheight = 12,
    cmdheight = 1,

    -- Time to update nvim, delay between multi shortcut
    updatetime = 250,
    timeoutlen = 1000,

    -- Wrap text
    wrap = false,
    linebreak = true,

    -- Show number
    numberwidth = 3,
    relativenumber = true,
    number = true,
    ruler = false,
    laststatus = 3,
    signcolumn = "yes",

    -- Split window
    splitbelow = true,
    splitright = true,

    -- Scroll with offset
    scrolloff = 10, -- minimal number of screen lines to keep above and below the cursor.
    sidescrolloff = 10, -- minimal number of screen lines to keep left and right of the cursor.

    -- Color and font
    termguicolors = true,
    guifont = "CaskaydiaCove NF:h13",
    -- guifont = "JetBrainsMono NFM:h13",
    -- wildmenu = true,
}

vim.g.mapleader = ","
for k, v in pairs(options) do
    vim.opt[k] = v
end
