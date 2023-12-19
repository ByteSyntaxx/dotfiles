-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins")

-- set some nvim keybinds
vim.keymap.set("n", "<F10>", ":Neotree filesystem reveal left<CR>")
