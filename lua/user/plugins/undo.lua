local status_ok, undo = pcall(require, "highlight-undo")
if not status_ok then
    return
end

local options = {
    hlgroup = 'HighlightUndo',
    duration = 300,
    keymaps = {
        { 'n', 'u',     'undo', {} },
        { 'n', '<C-r>', 'redo', {} },
    }
}

undo.setup(options)
