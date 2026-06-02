return {
--    {'catppuccin/nvim',config=function()vim.cmd.colorscheme('catppuccin-mocha')end},
    {'folke/tokyonight.nvim',config=function()vim.cmd.colorscheme('tokyonight-storm')end},
--    {'EdenEast/nightfox.nvim',config=function()vim.cmd.colorscheme('nightfox')end},
{
        'nvim-lualine/lualine.nvim', requires={'nvim-tree/nvim-web-devicons'},
        config=function()
            require('lualine').setup({
                options={theme='ayu_mirage'}
            })
        end
    }
}
