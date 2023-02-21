local highlight = vim.api.nvim_set_hl
local quickscope = {
    qs_highlight_on_keys = { 'f', 'F', 't', 'T' },
    -- qs_highlight_on_keys = { 'f', 'F'},
    qs_enable = 0,
    qs_max_chars = 500,
    qs_hi_priority = 2,
    qs_lazy_highlight = 1,
    qs_delay = 50,
    qs_filetype_blacklist = { 'dashboard' },
    qs_buftype_blacklist = { 'terminal', 'nofile' },
}
for k, v in pairs(quickscope) do
    vim.g[k] = v
end
highlight(0, "QuickScopePrimary", { fg = "#afff5f" })
highlight(0, "QuickScopeSecondary", { fg = "#5fffff" })
