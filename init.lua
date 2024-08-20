if vim.g.vscode then
  require("code")
else
  -- ordinary Neovim
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
