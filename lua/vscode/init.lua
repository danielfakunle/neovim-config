-- VSCode extension
vim.g.mapleader = " "
-- sync cliplboard
vim.opt.clipboard = "unnamedplus"
-- ignore case when searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

require("vscode.keymaps")
