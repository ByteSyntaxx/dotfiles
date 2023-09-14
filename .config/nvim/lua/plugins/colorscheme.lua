return {
	-- add catppuccin colorscheme
	{ "catppuccin/nvim" },
	-- add nightfox colorscheme
	{ "EdenEast/nightfox.nvim" },
	-- add gruvbox colorscheme
	{ "ellisonleao/gruvbox.nvim" },

	-- load colorscheme
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
