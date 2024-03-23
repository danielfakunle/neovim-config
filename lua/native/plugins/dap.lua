return {
	-- dap client for neovim
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<leader>db",
				":DapToggleBreakpoint<cr>",
				desc = "Add breakpoint at line",
			},
			{
				"<leader>dr",
				":DapContinue<cr>",
				desc = "Start or continue the debugger",
			},
			{
				"<leader>dt",
				":DapTerminate<cr>",
				desc = "Terminate debug session",
			},
			{
				"<leader>dx",
				function()
					require("dapui").close()
				end,
				desc = "Close debug session",
			},
		},
		config = function()
			local dap = require("dap")
			dap.adapters.cppdbg = {
				id = "cppdbg",
				type = "executable",
				command = vim.fn.stdpath("data") .. "/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
			}
			dap.configurations.cpp = {
				{
					name = "Launch file now",
					type = "cppdbg",
					request = "launch",
					miDebuggerPath = "/usr/bin/lldb",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = true,
					args = {},
				},
			}
			dap.configurations.c = {
				{
					name = "Launch file now",
					type = "cppdbg",
					request = "launch",
					miDebuggerPath = "/usr/bin/lldb",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = true,
					args = {},
				},
			}
		end,
	},
	-- for easy configuration
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			handlers = {},
			automatic_installation = true,
		},
	},
	-- javascript(node) dap
	{
		"mxsdev/nvim-dap-vscode-js",
		main = "dap-vscode-js",
		opts = {
			debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
			adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
		},
	},
	-- install vscode-js debugger
	{
		"microsoft/vscode-js-debug",
		build = [[npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out && git update-index --assume-unchanged package-lock.json]],
	},
	-- dap ui
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = {
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dapui.setup()
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
}
