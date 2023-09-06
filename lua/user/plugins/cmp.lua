local present, cmp = pcall(require, "cmp")

if not present then
    return
end

vim.o.completeopt = "menu,menuone,noselect"

local function border(hl_name)
    return {
        { "╭", hl_name },
        { "─", hl_name },
        { "╮", hl_name },
        { "│", hl_name },
        { "╯", hl_name },
        { "─", hl_name },
        { "╰", hl_name },
        { "│", hl_name },
    }
end

local cmp_window = require "cmp.utils.window"

cmp_window.info_ = cmp_window.info
cmp_window.info = function(self)
    local info = self:info_()
    info.scrollable = false
    return info
end

local options = {
    window = {
        completion = {
            border = border "CmpBorder",
            winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
        },
        documentation = {
            border = border "CmpDocBorder",
        },
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    formatting = {
        format = function(_, vim_item)
            local icons = require("user.plugins.icon").lspkind
            local duplicates = {
                buffer = 1,
                path = 1,
                nvim_lsp = 0,
                luasnip = 1,
            }
            vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
            vim_item.menu = ({
                nvim_lsp = "[🌈] LSP",
                emoji = "[🤡] Emoji",
                path = "[🔗] Path",
                calc = "[🖥️] CALC",

                cmp_tabnine = "[🤖] TabNine",
                vsnip = "[🚀] Snippet",
                luasnip = "[💡] Snippet",
                buffer = "[👾] Buffer",
                treesitter = "[🌳] Treesitter",
            })[_.source.name]

            if _.source.name == "vsnip" or _.source.name == "nvim_lsp" or _.source.name == "luasnip" then
                vim_item.dup = duplicates[_.source.name] or 0
            end
            return vim_item
        end,
    },
    sorting = {
        comparators = {
            require("cmp-under-comparator").under,
            cmp.config.compare.recently_used,
            cmp.config.compare.score,
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.sort_text,
            cmp.config.compare.kind,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
    mapping = {
        ["<C-p>"]     = cmp.mapping.select_prev_item(),
        ["<C-n>"]     = cmp.mapping.select_next_item(),
        ["<C-d>"]     = cmp.mapping.scroll_docs(-4),
        ["<C-f>"]     = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"]     = cmp.mapping.close(),
        ["<CR>"]      = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        },
        ["<Tab>"]     = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif require("luasnip").expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-Tab>"]   = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif require("luasnip").jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
    },
    sources = {
        { name = "luasnip",                priority = 90,  max_item_count = 12 },
        { name = "nvim_lsp",               priority = 100, max_item_count = 12 },
        { name = "path",                   priority = 20 },
        { name = "buffer",                 priority = 10,  keyword_length = 2, max_item_count = 12 },
        { name = "nvim_lua" },
        { name = "nvim_lsp_signature_help" },
    },
}

cmp.setup(options)

cmp.setup.cmdline(':', {
    mapping = require("cmp").mapping.preset.cmdline(),
    sources = require("cmp").config.sources({
        { name = 'cmdline', priority = 3 },
        { name = 'path',    priority = 2 },
        {
            name = 'cmdline_history',
            priority = 1,
            max_item_count = 3,
        },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = require("cmp").mapping.preset.cmdline(),
    sources = require("cmp").config.sources({
        { name = 'nvim_lsp_document_symbols', priority = 4 },
        {
            name = 'buffer',
            option = { keyword_pattern = [[\k\+]] },
            priority = 3,
        },
        {
            name = 'buffer-lines',
            option = {
                words = true,
                comments = true,
            },
            priority = 2,
        },
    })
})
