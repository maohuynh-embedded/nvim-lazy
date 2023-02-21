local status_ok, searchbox = pcall(require, "searchbox")
if not status_ok then
	return
end

searchbox.setup({
    defaults = {
        reverse = false,
        exact = false,
        prompt = ' ',
        modifier = 'disabled',
        confirm = 'on',
        clear_matches = true,
        show_matches = false,
    },
    popup = {
        relative = 'cursor',
        position = {
            row = 2,
            col = 0,
        },
        size = 30,
        border = {
            style = 'rounded',
            text = {
                top = ' Search ',
                top_align = 'center',
            },
        },
        win_options = {
            winhighlight = 'Normal:Normal,FloatBorder:Normal',
        },
    },
    -- hooks = {
    --   before_mount = function(input)
    --     -- code
    --   end,
    --   after_mount = function(input)
    --     -- code
    --   end,
    --   on_done = function(value, search_type)
    --     -- code
    --   end
    -- }
})
-- Hung Nguyen
-- NGuyen Quang Hunggg
-- Tran Vinh Nghi
-- Vinh Nghi Tran
