return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function ()
            vim.opt.termguicolors = true
            local bufferline = require("bufferline")
            bufferline.setup{
                options = {
                    style_preset =  {
                        bufferline.style_preset.no_italic,
                        bufferline.style_preset.no_bold,
                    },
                    hover = {
                        enabled = true,
                        delay = 200,
                        reveal = {'close'}
                    },
                    indicator = {
                        style = 'underline',
                        icon = ''
                    },
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Explorer",
                            highlight = "Directory",
                            separator = " "
                        }
                    }
                }
            }
        end
    }
}
