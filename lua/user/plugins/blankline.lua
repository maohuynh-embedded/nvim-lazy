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
    show_first_indent_level = true,
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
--     indent = {
--         char = "│",
--         -- highlight = { "Grey "}
--     },
--     whitespace = {
--         remove_blankline_trail = false,
--     },
--     scope = {
--         enabled = true,
--         show_start = false,
--         highlight = { "RainbowDelimiterViolet" }
--     },
-- }
--
-- blankline.setup(options)
