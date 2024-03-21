return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
      auto_install = true,
			indent = { enable = true },
			highlight = {
				enable = true,
			},
		},
	},
}
