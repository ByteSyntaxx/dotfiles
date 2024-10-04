-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = " "

require("config.lazy")
require("options")
require("keymap")

vim.cmd.colorscheme("onenord")
