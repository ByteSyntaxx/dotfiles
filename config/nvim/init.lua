require("config.lazy")

vim.keymap.set("n", "<C-e>", ":NvimTreeOpen<CR>", {})
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", {})
vim.keymap.set("n", "<A-t>", ":NvimTreeToggle<CR>", {})

vim.opt.expandtab=true
vim.opt.number=true
vim.opt.relativenumber=false
vim.opt.shiftwidth=4
vim.opt.tabstop=4

vim.cmd.colorscheme("catppuccin-mocha")
