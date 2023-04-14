local replace = {
    easy_replace_enable = 1,
    easy_replace_launch_wey = '<leader>rw',
    easy_replace_launch_in_visual_key = '<leader>rw',
    easy_replace_launch_cword_key = '<leader>rc',
    easy_replace_launch_cword_in_visual_key = '<leader>rc',
    easy_replace_highlight_ctermbg = 'green',
    easy_replace_highlight_guibg = 'green',
    easy_replace_add_history = 1
}

for k, v in pairs(replace) do
    vim.g[k] = v
end
