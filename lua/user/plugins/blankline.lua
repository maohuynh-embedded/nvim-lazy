local present, blankline = pcall(require, "indent_blankline")
if not present then
    return
end

local options = {
    indentLine_enabled = 1,
    filetype_exclude = {
        "help",
        "terminal",
        "alpha",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "mason",
        "Trouble",
        "lazy",
    },
    buftype_exclude = { "terminal" },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = false,
}

blankline.setup(options)


-- local present, blankline = pcall(require, "ibl")
-- if not present then
--     return
-- end
--
-- local options = {
--     enabled = true,
--     indent = {
--         char = "│",
--         highlight = "IblIndent",
--         smart_indent_cap = true,
--     },
--     whitespace = {
--         highlight = "IblWhitespace",
--         remove_blankline_trail = true,
--     },
--     scope = {
--         char = "│",
--         enabled = true,
--         show_start = false,
--         show_end = false,
--         injected_languages = true,
--         highlight = "IblScope",
--         exclude = {
--             language = {},
--         },
--     },
--     exclude = {
--         filetypes = {
--             "lspinfo",
--             "packer",
--             "checkhealth",
--             "help",
--             "man",
--             "gitcommit",
--             "TelescopePrompt",
--             "TelescopeResults",
--             "Trouble",
--             "lazy",
--         },
--         buftypes = {
--             "terminal",
--             "nofile",
--             "quickfix",
--             "prompt",
--             "alpha",
--             "dashboard",
--         },
--     },
-- }
--
-- blankline.setup(options)
