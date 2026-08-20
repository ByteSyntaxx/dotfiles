return {
    --    {'catppuccin/nvim',config=function()vim.cmd.colorscheme('catppuccin-mocha')end},
    --    {'folke/tokyonight.nvim',config=function()vim.cmd.colorscheme('tokyonight-storm')end},
    --    {'EdenEast/nightfox.nvim',config=function()vim.cmd.colorscheme('nightfox')end},
    {'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
            require('onedark').load()
        end
    },
    {
    'nvim-lualine/lualine.nvim', requires={'nvim-tree/nvim-web-devicons'},
    config=function()
        require('lualine').setup({
            options={theme='ayu_mirage'}
        })
    end
    }
}
