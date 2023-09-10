return {
	-- add nightfox colorscheme
	{ "EdenEast/nightfox.nvim" },
	-- add catppuccin colorscheme
	{ "nxstynate/catppuccin.nvim" },
	-- add gruvbox colorscheme
	{ "ellisonleao/gruvbox.nvim" },

	-- load nightfox colorscheme
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "nordfox",
		},
	},
}
