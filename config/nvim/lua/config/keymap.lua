vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y<CR>')
vim.keymap.set({'n', 'v', 'x'}, '<leader>d', '"+d<CR>')
vim.keymap.set({'n', 'v', 'x'}, '<leader>p', '"+p<CR>')
vim.keymap.set("n", "<C-e>", ":NvimTreeOpen<CR>", {})
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", {})
vim.keymap.set("n", "<A-t>", ":NvimTreeToggle<CR>", {})
