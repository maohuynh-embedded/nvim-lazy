local M = {}
M.general = {
    i = {
        -- Quick normal map
        ["jk"] = { "<ESC>", "escape vim" },
        ["kj"] = { "<ESC>", "escape vim" },

        -- Wrap text
        ["<A-r>"] = { "<C-o><cmd>set wrap!<CR>", "Enable wrap text" },

        -- Paste
        ["<C-v>"] = { "<C-R>*", "Set paste as Win OS" },

        -- Delete
        ["<C-BS>"] = { "<C-o>b<C-o>dw", "Delete by Ctrl Backspace" },

        -- Save file
        ["<C-s>"] = {
            "<ESC>:w | silent lua require'notify'('Saving file ....', 'success', {title = 'System', timeout = 1000})<cr>",
            "Save file in insert mode",
            opts = { silent = true },
        },

        -- go to  beginning and end
        ["<C-h>"] = { "<ESC>^i", "beginning of line" },
        ["<C-l>"] = { "<End>", "end of line" },

        -- move word
        ["<C-w>"] = { "<C-\\><C-O>w", "move words forward" },
        ["<C-b>"] = { "<C-\\><C-O>b", "move words backward" },
        ["<C-e>"] = { "<C-\\><C-O>e<C-O><Right>", "forword to end of word" },
        ["<C-z>"] = { "<Left><C-\\><C-O>ge<Right>", "backward to end of word" },

        -- New line
        -- TODO: Add insert new line abow cursor
        ["<C-o>"] = { "<C-\\><C-O>o", "insert new line below cursor" },

        -- navigate within insert mode
        ["<A-h>"] = { "<Left>", "move left" },
        ["<A-l>"] = { "<Right>", "move right" },
        ["<A-j>"] = { "<Down>", "move down" },
        ["<A-k>"] = { "<Up>", "move up" },

        -- line relative numbers
        ["<F12>"] = { "<C-o><cmd>set relativenumber!<CR>", "toggle line relative number" },
    },

    n = {
        ["<ESC>"] = { "<cmd> noh <CR>", "no highlight" },

        -- Change argument wrapping
        ["<leader>ar"] = { "<cmd>ArgWrap<CR>", "Change argument wrapping" },

        -- Set cursor move begin and end line
        ["<S-h>"] = { "^", "cursor left" },
        ["<S-l>"] = { "$", "cursor right" },

        -- switch between windows
        ["<C-h>"] = { "<C-w>h", "window left" },
        ["<C-l>"] = { "<C-w>l", "window right" },
        ["<space>h"] = { "<C-w>h", "window left" },
        ["<space>l"] = { "<C-w>l", "window right" },
        ["<space>j"] = { "<C-w>j", "window down" },
        ["<space>k"] = { "<C-w>k", "window up" },

        -- Copy all
        ["<C-c>"] = { "<cmd> %y+ <CR>", "copy whole file" },

        -- line relative numbers
        ["<F12>"] = { "<cmd>set relativenumber!<CR>", "toggle line relative number" },

        -- Wrap text
        ["<A-r>"] = { "<cmd>set wrap!<CR>", "Enable wrap text" },

        -- Delete
        ["<C-BS>"] = { "bdw", "Delete by Ctrl Backspace" },

        -- Insert blank line
        ["<space>o"] = { "o<ESC>", "Insert blow blank line" },
        ["<space>O"] = { "O<ESC>", "Insert abow blank line" },

        -- Manage to split window
        ["<leader>co"] = { "<C-W>o<CR>", "Close all split window" },
        ["<leader>vs"] = { "<cmd>vs<CR>", "Veritical split window" },
        ["<leader>hs"] = { "<cmd>hs<CR>", "Horizontal split window" },
        ["<leader>cs"] = { "<cmd>close<CR>", "Horizontal split window" },

        -- Unhightlight after search
        ["n"] = { "<cmd>set hlsearch<CR>n", "next search" },
        ["N"] = { "<cmd>set hlsearch<CR>N", "previou search" },

        -- Source file and save file
        ["<C-s>"] = {
            "<ESC>:w | silent lua require'notify'('Saving file  ', 'success', {title = 'System', timeout = 1000})<cr>",
            "Save file in normal mode",
            opts = { silent = true },
        },

        ["<leader>s"] = {
            "<ESC>:w<CR>:source% | silent lua require'notify'('Reload successfull ', 'success', {title = 'System', timeout = 1000})<cr>",
            "Save file and source file in normal mode",
            opts = { silent = true },
        },

        -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
        -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
        -- empty mode is same as using <cmd> :map
        -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
        ["j"]      = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
        ["k"]      = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
        ["<Up>"]   = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
        ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    },

    v = {
        ["//"]       = { "\"fy/\\V<C-R>f<CR>", "Search a visual word", opts = { silent = true } },
        ["<"]        = { "<gv", "easier moving code block right" },
        [">"]        = { ">gv", "easier moving code block left" },
        ["<Up>"]     = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
        ["<Down>"]   = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
        -- Format range
        ["<space>f"] = { "<cmd>lua require'lsp-range-format'.format()<CR>", "format range" },
    },

    x = {
        ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
        ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
        -- Don't copy the replaced text after pasting in visual mode
        -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
        ["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', opts = { silent = true } },

        -- Unhightlight after search
        ["n"] = { "<cmd>set hlsearch<CR>n", "next search" },
        ["N"] = { "<cmd>set hlsearch<CR>N", "previou search" },

        ["<C-BS>"] = { "bdw", "Delete by Ctrl Backspace" },

        -- Set cursor move begin and end line
        ["<S-h>"] = { "^", "cursor left" },
        ["<S-l>"] = { "$", "cursor right" },
    },

    o = {
        ["<S-h>"] = { "^", "cursor left" },
        ["<S-l>"] = { "$", "cursor right" },
    },

    c = {
        ["<C-v>"] = { "<C-R>*", "Set paste as Win OS in command line" },
    },
}

M.lazygit = {
    n = {
        ["<leader>gg"] = { "<cmd>LazyGit<CR>", "Lazygit" },
    }
}

M.barbar = {
    n = {
        -- Move to previous/next
        ["<A-.>"] = { "<cmd>BufferNext<CR>", "Next Buffer" },
        ["<A-,>"] = { "<cmd>BufferPrevious<CR>", "Previous Buffer" },

        -- Go to buffer in position
        ["<A-1>"] = { "<cmd>BufferGoto 1<CR>", "Goto buffer 1" },
        ["<A-2>"] = { "<cmd>BufferGoto 2<CR>", "Goto buffer 2" },
        ["<A-3>"] = { "<cmd>BufferGoto 3<CR>", "Goto buffer 3" },
        ["<A-4>"] = { "<cmd>BufferGoto 4<CR>", "Goto buffer 4" },
        ["<A-5>"] = { "<cmd>BufferGoto 5<CR>", "Goto buffer 5" },
        ["<A-6>"] = { "<cmd>BufferGoto 6<CR>", "Goto buffer 6" },
        ["<A-7>"] = { "<cmd>BufferGoto 7<CR>", "Goto buffer 7" },
        ["<A-8>"] = { "<cmd>BufferGoto 8<CR>", "Goto buffer 8" },
        ["<A-9>"] = { "<cmd>BufferGoto 9<CR>", "Goto buffer 9" },
        ["<A-0>"] = { "<cmd>BufferLast<CR>", "Goto last buffer" },
        -- ["<leader>p"] = { "<cmd>BufferPick<CR>", "Goto pick buffer" },

        -- Re-order to previous/next
        ["<space>,"] = { "<cmd>BufferMovePrevious<CR>", "Re-order previous" },
        ["<space>."] = { "<cmd>BufferMoveNext<CR>", "Re-order next" },

        -- Pin/unpin buffer
        ["<space>p"] = { "<cmd>BufferPin<CR>", "Pin/Unpin buffer" },

        -- Close buffer
        ["<space><Tab>"]   = { "<cmd>BufferClose<CR>", "Close current buffer" },
        ["<leader>c<Tab>"] = { "<cmd>BufferCloseAllButCurrentOrPinned<CR>", "Close all but keep current or pinned" },
    },
}

M.move = {
    n = {
        ["<A-j>"] = { ":MoveLine(1)<CR>", "Move line down", opts = { silent = true } },
        ["<A-k>"] = { ":MoveLine(-1)<CR>", "Move line up", opts = { silent = true } },
        ["<A-h>"] = { ":MoveHChar(-1)<CR>", "Move line left", opts = { silent = true } },
        ["<A-l>"] = { ":MoveHChar(1)<CR>", "Move line right", opts = { silent = true } },
    },

    v = {
        ["<A-j>"] = { ":MoveBlock(1)<CR>", "Move block line down", opts = { silent = true } },
        ["<A-k>"] = { ":MoveBlock(-1)<CR>", "Move blockline up", opts = { silent = true } },
        ["<A-h>"] = { ":MoveHBlock(-1)<CR>", "Move blockline left", opts = { silent = true } },
        ["<A-l>"] = { ":MoveHBlock(1)<CR>", "Move blockline right", opts = { silent = true } },
    }

}

M.fontsize = {
    n = {
        ['<leader>if'] = { "<cmd>FontSizeUp 1<CR>", "Increase font 1 size" },
        ['<leader>df'] = { "<cmd>FontSizeDown 1<CR>", "Decrease font 1 size" },
    }
}

M.trouble = {
    n = {
        ['<leader>tb'] = { "<cmd>TroubleToggle<CR>", "Toggle trouble" },
        ['<leader>tw'] = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Toggle workspace_diagnostics" },
        ['<leader>td'] = { "<cmd>TroubleToggle document_diagnostics<CR>", "Toggle document_diagnostics" },
    }
}

M.nvimtree = {
    n = {
        -- toggle nvimtree
        ["<F4>"] = { "<cmd>NvimTreeToggle<CR>", "toggle nvimtree" },
        -- focus nvimtree
        ["<F5>"] = { "<cmd>NvimTreeFocus<CR>", "focus nvimtree" },
    },
}

M.blankline = {
    n = {
        ["<leader>cc"] = {
            function()
                local ok, start = require("indent_blankline.utils").get_current_context(
                    vim.g.indent_blankline_context_patterns,
                    vim.g.indent_blankline_use_treesitter_scope
                )
                if ok then
                    vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
                    vim.cmd [[normal! _]]
                end
            end,
            "Jump to current_context",
        },
    },
}

M.lspconfig = {
    -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
    n = {
        ["gD"] = {
            function()
                vim.lsp.buf.declaration()
            end,
            "lsp declaration",
        },

        ["gd"] = {
            function()
                vim.lsp.buf.definition()
            end,
            "lsp definition",
        },

        -- ["K"] = {
        --     function()
        --         vim.lsp.buf.hover()
        --     end,
        --     "lsp hover",
        -- },

        ["gi"] = {
            function()
                vim.lsp.buf.implementation()
            end,
            "lsp implementation",
        },

        ["<leader>ls"] = {
            function()
                vim.lsp.buf.signature_help()
            end,
            "lsp signature_help",
        },

        ["gt"] = {
            function()
                vim.lsp.buf.type_definition()
            end,
            "lsp definition type",
        },

        -- ["<leader>ra"] = {
        --   function()
        --     vim.lsp.buf.rename()
        --   end,
        --   "lsp rename",
        -- },

        -- ["<leader>ca"] = {
        --   function()
        --     vim.lsp.buf.code_action()
        --   end,
        --   "lsp code_action",
        -- },

        ["gr"] = {
            function()
                vim.lsp.buf.references()
            end,
            "lsp references",
        },

        ["<leader>f"] = {
            function()
                vim.diagnostic.open_float()
            end,
            "floating diagnostic",
        },

        ["[d"] = {
            function()
                vim.diagnostic.goto_prev()
            end,
            "goto prev",
        },

        ["d]"] = {
            function()
                vim.diagnostic.goto_next()
            end,
            "goto_next",
        },

        ["<leader>q"] = {
            function()
                vim.diagnostic.setloclist()
            end,
            "diagnostic setloclist",
        },

        ["<leader>fm"] = {
            function()
                vim.lsp.buf.format { async = true }
            end,
            "lsp formatting",
        },

        ["<leader>wa"] = {
            function()
                vim.lsp.buf.add_workspace_folder()
            end,
            "add workspace folder",
        },

        ["<leader>wr"] = {
            function()
                vim.lsp.buf.remove_workspace_folder()
            end,
            "remove workspace folder",
        },

        ["<leader>wl"] = {
            function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end,
            "list workspace folders",
        },
    },

    x = {
        ["<space>f"] = {
            ":lua require'lsp-range-format'.format()<ESC>",
            "lsp formatting",
        },
    }
}

M.telescope = {
    n = {
        -- find
        ["<leader>ff"]     = { "<cmd> Telescope find_files <CR>", "find files" },
        ["<leader>fa"]     = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
        ["<leader>fw"]     = { "<cmd> Telescope live_grep <CR>", "live grep" },
        ["<leader>ft"]     = { "<cmd> Telescope help_tags <CR>", "help page" },
        ["<leader>fo"]     = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
        ["<leader>fk"]     = { "<cmd> Telescope keymaps <CR>", "show keys" },
        ["<leader>fp"]     = { "<cmd> Telescope project <CR>", "project" },
        ["<leader>fs"]     = { "<cmd> Telescope menu Sessions <CR>", "Sessions" },
        ["<leader>fb"]     = { "<cmd> Telescope file_browser <CR>", "File on directory" },
        ["<leader>fh"]     = { "<cmd> Telescope highlights <CR>", "File on directory" },
        ["<leader>f<Tab>"] = { "<cmd> Telescope buffers <CR>", "find buffers" },

        -- git
        -- ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
        -- ["<leader>st"] = { "<cmd> Telescope git_status <CR>", "git status" },

        -- pick a hidden term
        ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },

        -- theme switcher
        ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },

        -- command
        ["<leader>cm"] = {
            function()
                require('telescope.builtin').commands(require('telescope.themes').get_dropdown())
            end,
        }

    },
}

M.lspsaga = {
    n = {
        ["gpd"]        = { "<cmd>Lspsaga peek_definition<CR>", "goto peek definition" },
        ["gf"]         = { "<cmd>Lspsaga lsp_finder<CR>", "lsp finder" },
        ["K"]          = { "<cmd>Lspsaga hover_doc<CR>", "Hover doc" },
        ["<leader>go"] = { "<cmd>Lspsaga show_line_diagnostics<CR>", "show line diagnostic" },
        ["<leader>gc"] = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", "show cursor diagnostic" },
        ["<leader>gb"] = { "<cmd>Lspsaga show_buf_diagnostics<CR>", "show buffer diagnostic" },
        ["<leader>gj"] = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "diagnostic jump next" },
        ["<leader>gk"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "diagnostic jump previous" },
        ["<leader>ra"] = { "<cmd>Lspsaga rename<CR>", "lsp rename" },
        ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "lsp code_action" },
        ["<leader>o"]  = { "<cmd>Lspsaga outline<CR>", "Lspsaga outline" },
    },

    v = {
        ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "lsp code_action" },
    }
}

M.jabs = {
    n = {
        ["<leader>jb"] = { "<cmd>JABSOpen<CR>", "Quick open buffer with review" },
    }
}

M.gitsigns = {
    n = {
        -- Navigation through hunks
        ["]h"] = {
            function()
                if vim.wo.diff then
                    return "]c"
                end
                vim.schedule(function()
                    require("gitsigns").next_hunk()
                end)
                return "<Ignore>"
            end,
            "Jump to next hunk",
            opts = { expr = true },
        },

        ["[h"] = {
            function()
                if vim.wo.diff then
                    return "[c"
                end
                vim.schedule(function()
                    require("gitsigns").prev_hunk()
                end)
                return "<Ignore>"
            end,
            "Jump to prev hunk",
            opts = { expr = true },
        },

        -- Actions
        ["<leader>rh"] = {
            function()
                require("gitsigns").reset_hunk()
            end,
            "Reset hunk",
        },

        ["<leader>ph"] = {
            function()
                require("gitsigns").preview_hunk()
            end,
            "Preview hunk",
        },

        ["<leader>gb"] = {
            function()
                package.loaded.gitsigns.blame_line()
            end,
            "Blame line",
        },

        ["<leader>gd"] = {
            function()
                require("gitsigns").toggle_deleted()
            end,
            "Toggle deleted",
        },
    },
}

M.floaterm = {
    n = {
        ["<leader>to"] = { "<cmd>FloatermNew bash.exe<CR>", "open new terminal" },
        ["<leader>tk"] = { "<cmd>FloatermKill<CR>:floatermprev<cr>", "kill current terminal" },
        ["<leader>tn"] = { "<cmd>FloatermNext<CR>", "next terminal" },
        ["<leader>tp"] = { "<cmd>FloatermPrev<CR>", "previous terminal" },
        ["<leader>tt"] = { "<cmd>FloatermToggle<CR>", "toggle terminal" },
        ["<leader>ts"] = { "<cmd>FloatermShow<CR>", "show terminal" },
    },

    t = {
        ["<leader>to"] = { "<C-\\><C-n><cmd>FloatermNew bash.exe<CR>", "open new terminal" },
        ["<leader>tk"] = { "<C-\\><C-n><cmd>FloatermKill<CR>:FloatermPrev<cr>", "kill current terminal" },
        ["<leader>tn"] = { "<C-\\><C-n><cmd>FloatermNext<CR>", "next terminal" },
        ["<leader>tp"] = { "<C-\\><C-n><cmd>FloatermPrev<CR>", "previous terminal" },
        ["<leader>tt"] = { "<C-\\><C-n><cmd>FloatermToggle<CR>", "toggle terminal" },
        ["<leader>ts"] = { "<C-\\><C-n><cmd>FloatermShow<CR>", "show terminal" },
        ["<C-v>"]      = { "<C-\\><C-n>pi", "Paste in terminal" },
        ["<C-BS>"]     = { "<C-\\><C-n>bdw", "Delete word in terminal" },
        ["<C-q>"]      = { "<C-\\><C-n>:FloatermToggle<CR>", "Quit terminal" },
    },
}

M.align = {
    n = {
        ["<leader>aw"] = {
            function()
                local a = require 'align'
                a.operator(
                    a.align_to_string,
                    { is_pattern = false, reverse = true, preview = true }
                )
            end,
        }
    },

    x = {
        ["<leader>aa"] = {
            function()
                require 'align'.align_to_char(1, true)
            end,
            "Aligns to 1 character, looking left"
        },
        ["<leader>as"] = {
            function()
                require 'align'.align_to_char(2, true, true)
            end,
            "Aligns to 2 characters, looking left and with previews"
        },
        ["<leader>aw"] = {
            function()
                require 'align'.align_to_string(false, true, true)
            end,
            "Aligns to a string, looking left and with previews"
        },
        ["<leader>ar"] = {
            function()
                require 'align'.align_to_string(true, true, true)
            end,
            "Aligns to a Lua pattern, looking left and with previews"
        },
    }
}

local hop = require('hop')
local directions = require('hop.hint').HintDirection
M.hop = {
    n = {
        ["f"] = {
            function()
                hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
            end,
            "hop move forward"
        },
        ["F"] = {
            function()
                hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
            end,
            "hop move backward"
        },
        ['t'] = {
            function()
                hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
            end,
            "hop move forward before cursor"
        },
        ['T'] = {
            function()
                hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = -1 })
            end,
            "hop move backward before cursor"
        }
    }
}

M.iconpicker = {
    n = {
        ["<leader><leader>i"] = { "<cmd>IconPickerNormal<CR>", "Icon picker in normal mode" },
        ["<leader><leader>y"] = { "<cmd>IconPickerYank<CR>", " Yank the selected icon into register" },
    },

    i = {
        ["<A-i>"] = { "<cmd>IconPickerInsert<CR>", "Icon picker in insert mode" },
    }
}

-- BUG: Mapping for search box is invalid
M.searchbox = {
    n = {
        ["<leader>ry"] = { "<cmd>SearchBoxReplace confirm=menu<CR>", "Replace with confirm" },
    },
}

local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"
M.treesitter = {
    n = {
        [";"] = { ts_repeat_move.repeat_last_move_next, "goes forward" },
        ["<A-;>"] = { ts_repeat_move.repeat_last_move_previous, "goes previous" },
    },
    x = {
        [";"] = { ts_repeat_move.repeat_last_move_next, "goes forward" },
        ["<A-;>"] = { ts_repeat_move.repeat_last_move_previous, "goes previous" },
    },
    v = {
        [";"] = { ts_repeat_move.repeat_last_move_next, "goes forward" },
        ["<A-;>"] = { ts_repeat_move.repeat_last_move_previous, "goes previous" },
    },
}

M.vimspector = {
    n = {
        ["<F1>"] = { "<cmd>call vimspector#Launch()<CR>", "Launch"},
        ["<F2>"] = { "<cmd>call vimspector#Reset()<CR>", "Reset"},
        ["<F8>"] = { "<cmd>call vimspector#Continue()<CR>", "Continue"},
        ["<F6>"] = { "<cmd>call vimspector#ToggleBreakpoint()<CR>", "ToggleBreakpoint"},
        ["<F7>"] = { "<cmd>call vimspector#ClearBreakpoints()<CR>", "ClearBreakpoints"},

        ["<F3>"] = { "<Plug>VimspectorRestart", "restart"},
        ["<F9>"] = { "<Plug>VimspectorStepOut", "stepout"},
        ["<F10>"] = { "<Plug>VimspectorStepInto", "step into"},
        ["<F11>"] = { "<Plug>VimspectorStepOver", "step over"},
    },
}

return M
