return {
    {'catppuccin/nvim'},
    {'nvim-lualine/lualine.nvim', requires={'nvim-tree/nvim-web-devicons'},
    config=function()
        require('lualine').setup({
            options={theme='palenight'}
        })
    end
    }
}
