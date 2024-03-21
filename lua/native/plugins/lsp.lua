return {
	-- for managing language servers
	{ "williamboman/mason.nvim", config = true },
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			automatic_installation = true,
		},
	},
	-- connect neovim to language servers
	{
		"neovim/nvim-lspconfig",
		main = "lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			-- add completion capabilities to lsps
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			-- TODO: add lsps here
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
		end,
	},
	-- for linting and formatting
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
		main = "null-ls",
		lazy = true,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					-- TODO: add linters and formatters here
					-- linting
					require("none-ls.code_actions.eslint_d"),
					-- formatting
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
				},
			})
		end,
	},
	-- for plugin development
	{ "folke/neodev.nvim", opts = { library = { plugins = { "nvim-dap-ui" }, types = true } } },
}
