local floaterm = {
    floaterm_wintype = 'Terminal',
    floaterm_borderchars = '─│─│╭╮╯╰',
    floaterm_opener = 'vsplit',
    floaterm_keymap_new = '<leader><to>',
    floaterm_keymap_kill = '<leader><tk>',
    floaterm_width = 0.9,
    floaterm_height = 0.9,
    floaterm_position = 'center',
    floaterm_keymap_toggle = '<leader><tt>'
}

for k, v in pairs(floaterm) do
    vim.g[k] = v
end

