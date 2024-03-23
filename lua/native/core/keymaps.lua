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

-- navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- send deleted character to shadowrealm
vim.keymap.set("n", "x", '"_x')
