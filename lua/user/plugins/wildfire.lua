local status_ok, wildfire = pcall(require, "wildfire")
if not status_ok then
    return
end

local options = {
    surrounds = {
        { "(", ")" },
        { "{", "}" },
        { "<", ">" },
        { "[", "]" },
        { '"', '"' },
    },
    keymaps = {
        init_selection = "<CR>",
        node_incremental = "<CR>",
        node_decremental = "<BS>",
    },
    filetype_exclude = { "qf" }, --keymaps will be unset in excluding filetypes
}

wildfire.setup(options)
