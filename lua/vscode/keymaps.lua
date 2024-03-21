local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- paste without overwriting
keymap.set("v", "p", "P")

-- send deleted character to shadowrealm
keymap.set("n", "x", '"_x')

-- clear search highlight
keymap.set("n", "<Esc>", ":noh<cr>")

-- skipping folded regions
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

-- navigation
keymap.set("n", "<C-j>", ':lua require("vscode-neovim").call("workbench.action.navigateDown")<cr>', opts)
keymap.set("x", "<C-j>", ':lua require("vscode-neovim").call("workbench.action.navigateDown")<cr>', opts)
keymap.set("n", "<C-k>", ':lua require("vscode-neovim").call("workbench.action.navigateUp")<cr>', opts)
keymap.set("x", "<C-k>", ':lua require("vscode-neovim").call("workbench.action.navigateUp")<cr>', opts)
keymap.set("n", "<C-h>", ':lua require("vscode-neovim").call("workbench.action.navigateLeft")<cr>', opts)
keymap.set("x", "<C-h>", ':lua require("vscode-neovim").call("workbench.action.navigateLeft")<cr>', opts)
keymap.set("n", "<C-l>", ':lua require("vscode-neovim").call("workbench.action.navigateRight")<cr>', opts)
keymap.set("x", "<C-l>", ':lua require("vscode-neovim").call("workbench.action.navigateRight")<cr>', opts)

-- which key
keymap.set("n", "<leader>", ':lua require("vscode-neovim").call("whichkey.show")<cr>', opts)
keymap.set("x", "<leader>", ':lua require("vscode-neovim").call("whichkey.show")<cr>', opts)
