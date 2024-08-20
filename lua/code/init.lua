-- Leader key
vim.g.mapleader = " "
local vscode = require("vscode")

-- For keymaps
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local function add_desc(desc)
  return vim.tbl_extend("force", opts, { desc = desc })
end

-- Better navigation
keymap.set({ "n", "x" }, "<C-j>", function()
  vscode.call("workbench.action.navigateDown")
end, add_desc("Navigate down"))
keymap.set({ "n", "x" }, "<C-k>", function()
  vscode.call("workbench.action.navigateUp")
end, add_desc("Navigate up"))
keymap.set({ "n", "x" }, "<C-h>", function()
  vscode.call("workbench.action.navigateLeft")
end, add_desc("Navigate left"))
keymap.set({ "n", "x" }, "<C-l>", function()
  vscode.call("workbench.action.navigateRight")
end, add_desc("Navigate right"))

-- Undo and Redo
keymap.set({ "n", "v" }, "u", function()
  vscode.call("undo")
end, add_desc("Undo"))
keymap.set({ "n", "v" }, "<C-r>", function()
  vscode.call("redo")
end, add_desc("Redo"))

-- Paste without overwritting
-- keymap.set('n', 'p', 'P')
-- keymap.set('n', 'p', ':pu<CR>')

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<cr>", add_desc("Clear search highlights"))

-- Skip folds
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

-- Use system clipboard
vim.opt.clipboard:append("unnamedplus")

-- Ignore case when searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
