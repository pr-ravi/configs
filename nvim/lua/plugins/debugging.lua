-- debugging, uses DAP
-- https://github.com/mfussenegger/nvim-dap
-- help: https://github.com/mfussenegger/nvim-dap/blob/master/doc/dap.txt
-- install debuggers: https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
-- dap-ui, https://github.com/rcarriga/nvim-dap-ui
return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")

			vim.keymap.set("n", "<F5>", function()
				dap.continue()
			end)
			vim.keymap.set("n", "<F10>", function()
				dap.step_over()
			end)
			vim.keymap.set("n", "<F11>", function()
				dap.step_into()
			end)
			vim.keymap.set("n", "<F12>", function()
				dap.step_out()
			end)
			vim.keymap.set("n", "<Leader>b", function()
				dap.toggle_breakpoint()
			end)
			vim.keymap.set("n", "<Leader>B", function()
				dap.set_breakpoint()
			end)

			local dapui = require("dapui")
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
