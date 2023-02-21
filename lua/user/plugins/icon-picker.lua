local status_ok, iconpicker = pcall(require, "icon-picker")
if not status_ok then
	print("Error: icon-picker")
	return
end

iconpicker.setup({
	disable_legacy_commands = true
})
