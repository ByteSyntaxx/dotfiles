vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {'nvim-telescope/telescope.nvim', tag='0.1.5', requires={{'nvim-lua/plenary.nvim'}}}
	use ({'navarasu/onedark.nvim',
        config=function()
            require('onedark').setup({stale='darker'})
            require('onedark').load()
            vim.cmd('colorscheme onedark')
        end
    })
    use ('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
    use ({'nvim-lualine/lualine.nvim', requires={'nvim-tree/nvim-web-devicons'},
        config=function()
            require('lualine').setup({
                options={theme='dracula'}
            })
        end
    })
end)
