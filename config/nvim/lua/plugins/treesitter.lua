return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').setup({
            highlight = {enabled = true},
            indent = {enabled = true},
            autotage = {enabled = true},
            ensure_installed = {"lua", "c", "python"},
            auto_install = true,
        })
        vim.api.nvim_create_autocmd("FileType", {
            callback = function ()
                pcall(vim.treesitter.start)
            end,
        })
    end
}
