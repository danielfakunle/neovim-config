if vim.g.vscode then
	require("vscode")
else
	-- ordinary Neovim
	require("native.core")
	require("native.lazy")
end
