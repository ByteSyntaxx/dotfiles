return {
    {'navarasu/onedark.nvim'},
    {'catppuccin/nvim'},
    {'projekt0n/github-nvim-theme'},
    {'EdenEast/nightfox.nvim'},
    {'navarasu/onedark.nvim'},
    {'maxmx03/solarized.nvim'},
    {'ellisonleao/gruvbox.nvim',
        config=function()
            vim.o.background='dark'
            vim.cmd('colorscheme gruvbox')
        end
    }
}
