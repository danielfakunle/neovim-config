vim.g.mapleader = " "

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false

vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false
vim.opt.backspace = "indent,eol,start"
vim.opt.path:append("**")
vim.opt.wildignore:append("*/node_modules/*")
vim.opt.splitkeep = "cursor"
