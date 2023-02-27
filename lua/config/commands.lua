local autocmd = vim.api.nvim_create_autocmd
local autogrp = vim.api.nvim_create_augroup
local _general = autogrp("_general", { clear = true })

--
--[[ ========= Command for settings nvim =========]]
-- Disable automatic comment in newline
autocmd({ "FileType" },
    {
        pattern = "*",
        command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
        group = _general
    }
)

-- Auto reload content changed outside
autocmd({ "CursorHold,CursorHoldI,FocusGained,BufEnter " },
    {
        pattern = "*",
        command = "checktime",
        group = _general
    }
)

autocmd({ "FocusGained,BufEnter,CursorHold,CursorHoldI" },
    {
        pattern = "*",
        command = "if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''| checktime |endif",
        group = _general
    }
)

autocmd({ "FileChangedShellPost" },
    {
        pattern = "*",
        command = "echohl WarningMsg | echohl None",
        group = _general
    }
)

autocmd({ "CursorHold" },
    {
        pattern = "*",
        command = "set nohlsearch",
    }
)

-- go to last loc when opening a buffer
autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- close some filetypes with <q>
autocmd("FileType", {
    pattern = {
        "qf",
        "help",
        "man",
        "notify",
        "lspinfo",
        "spectre_panel",
        "startuptime",
        "tsplayground",
        "PlenaryTestPopup",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})

-- Disable statusline in dashboard
autocmd("FileType", {
    pattern = "alpha",
    callback = function()
        -- store current statusline value and use that
        local old_laststatus = vim.opt.laststatus
        vim.api.nvim_create_autocmd("BufUnload", {
            buffer = 0,
            callback = function()
                vim.opt.laststatus = old_laststatus
            end,
        })
        vim.opt.laststatus = 0
    end,
})

-- Highlight yank
autocmd("TextYankPost", {
    command = "silent! lua vim.highlight.on_yank({ timeout = 300 })",
    group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
})

-- Update rainbow
autocmd("CmdlineLeave, CmdlineChanged, CmdlineEnter, InsertLeave, InsertChange", {
    pattern = "*",
    command = "TSToggle rainbow | TSToggle rainbow",
})

-- autocmd("BufRead", {
--     pattern = "*",
--     command = "call repeat#set('\\<Plug>MyWonderfulMap', v:count)",
-- })

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'sh',
    callback = function()
        vim.lsp.start({
            name = 'bash-language-server',
            cmd = { 'bash-language-server', 'start' },
        })
    end,
})
