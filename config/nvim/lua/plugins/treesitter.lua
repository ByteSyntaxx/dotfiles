return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter').setup({
			highlight = {enabled = true},
			indent = {enabled = true},
			autotage = {enabled = true},
			ensure_installed = {"lua"},
			auto_install = false,
		})
	end
}
