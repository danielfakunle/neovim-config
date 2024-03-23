-- clear search highlight
vim.keymap.set("n", "<Esc>", ":noh<cr>")

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>", {})
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>", {})
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>", {})
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>", {})

-- neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal right toggle<cr>", {})

-- formatting
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- nvim dap
vim.keymap.set("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<leader>dc", function()
	--if vim.fn.filereadable(".vscode/launch.json") then
		--require("dap.ext.vscode").load_launchjs(nil, { gdb = { "c", "cpp" } })
	--end
	require("dap").continue()
end)
vim.keymap.set("n", "<leader>n", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<leader>ds", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<leader>do", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<leader>dt", function()
	require("dap").terminate()
end)
vim.keymap.set("n", "<leader>dx", function()
	require("dapui").close()
end)
vim.keymap.set("n", "<Leader>di", function()
	require("dap").repl.open()
end)
vim.keymap.set("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
	require("dap.ui.widgets").hover()
end)
vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end)

-- navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- send deleted character to shadowrealm
vim.keymap.set("n", "x", '"_x')
