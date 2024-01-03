return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config=function ()
            vim.opt.termguicolors = true
            require("bufferline").setup {
              options = {
                always_show_bufferline = false,
                diagnostics = 'nvim_lsp',
                diagnostics_indicator = function(count)
                  return "("..count..")"
                end,
                offsets = {
                  {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left"
                  },
                },
              },
            }
        end
    }
}
