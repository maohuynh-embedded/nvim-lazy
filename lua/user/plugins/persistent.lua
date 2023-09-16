local present, persistent = pcall(require, "persistent-breakpoints")
if not present then
    return
end

local options = {
    save_dir = vim.fn.stdpath('data') .. '/nvim_checkpoints',
    -- when to load the breakpoints? "BufReadPost" is recommanded.
    load_breakpoints_event = "BufReadPost",
    -- record the performance of different function. run :lua require('persistent-breakpoints.api').print_perf_data() to see the result.
    perf_record = false,
    -- perform callback when loading a persisted breakpoint
    --- @param opts DAPBreakpointOptions options used to create the breakpoint ({condition, logMessage, hitCondition})
    --- @param buf_id integer the buffer the breakpoint was set on
    --- @param line integer the line the breakpoint was set on
    on_load_breakpoint = nil,
}

persistent.setup(options)
