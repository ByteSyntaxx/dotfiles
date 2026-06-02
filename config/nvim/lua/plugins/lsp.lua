return {
    {"williamboman/mason.nvim",config = function()require("mason").setup()end},
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" }, -- Ensure Mason is loaded first
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pylsp" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" }, -- Ensure LSP configurations are loaded after Mason
        config = function()
            local caps = require("cmp_nvim_lsp").default_capabilities()
            vim.lsp.config['lua_ls'] = {
                cmd = { 'lua-language-server' },
                filetypes = { 'lua' },
                root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
                capabilities = caps,
                settings = {
                    Lua = {
                        runtime = { version = 'LuaJIT' },
                        diagnostics = { globals = { 'vim' , 'hl' } },
                        telemetry = { enable = false },
                    },
                },
            }
            vim.lsp.config['pylsp'] = {
                cmd = {'pylsp'},
                filetypes = {'python'},
                capabilities = caps
            }
            for name, _ in pairs(vim.lsp.config._configs) do
                if name ~= '*' then
                    vim.lsp.enable(name)
                end
            end
        end,
    },
    vim.diagnostic.config({ virtual_text = true })
}
