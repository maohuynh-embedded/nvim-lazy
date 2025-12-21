NVIMAPP ?= .nvim/lua/user

.PHONY: nvim help
nvim:
	NVIM_APPNAME=$(NVIMAPP) nvim

help:
	@echo "make nvim        # Launch nvim with NVIM_APPNAME=$(NVIMAPP)"
	@echo "Use 'make nvim NVIMAPP=.nvim/lua/user' to override."
