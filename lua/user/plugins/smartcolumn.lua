local status_ok, smartcolumn = pcall(require, "smartcolumn")
if not status_ok then
  return
end

local config = {
   colorcolumn = 80,
   disabled_filetypes = { "help", "text", "markdown" },
   limit_to_window = false,
}

smartcolumn.setup(config)
