local status_ok, masondap = pcall(require, "mason-nvim-dap")
if not status_ok then
    return
end

local option = {
    ensure_installed = {
        "codelldb",
        "cppdbg",
    },
    automatic_installation = false,
    handlers = {
        function(config)
            -- all sources with no handler get passed here

            -- Keep original functionality
            require('mason-nvim-dap').default_setup(config)
        end,

        cppdbg = function(config)
            config.adapters = {
                id = 'cppdbg',
                type = 'executable',
                command = vim.fn.exepath('OpenDebugAD7'),
                options = {
                    detached = false,
                },
            }
            config.configurations = {
                {
                    name = 'Launch GDB',
                    type = 'cppdbg',
                    request = 'launch',
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopAtEntry = false,
                    -- MIMode = "lldb",
                    -- miDebuggerPath = "C:\\Users\\hungquangnguyen\\AppData\\Local\\nvim-data\\mason\\packages\\codelldb\\extension\\lldb\\bin\\lldb.exe"
                },

                {
                    name = 'Attach to gdbserver :1234',
                    type = 'cppdbg',
                    request = 'launch',
                    MIMode = 'gdb',
                    -- miDebuggerServerAddress = 'localhost:1234',
                    miDebuggerPath = vim.fn.exepath('gdb'),
                    -- miDebuggerPath = 'C:\\MinGW\\bin\\gdb.exe',
                    cwd = '${workspaceFolder}',
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\', 'file')
                    end,
                },
            }
            masondap.default_setup(config)
        end,

        codelldb = function(config)
            config.configurations = {
                {
                    name = 'LLDB: Launch file',
                    type = 'codelldb',
                    request = 'launch',
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
                    args = {},
                },

                {
                    name = 'LLDB: Launch remote',
                    type = 'codelldb',
                    request = 'launch',
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
                    args = {},
                },
            }
            masondap.default_setup(config)
        end
    }
}

masondap.setup(option)
