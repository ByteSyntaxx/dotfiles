local on_attach = function(_,_)

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
end

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" }, -- Ensure Mason is loaded first
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls", -- Correct LSP name for Lua
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" }, -- Ensure LSP configurations are loaded after Mason
        config = function()
            local caps = require("cmp_nvim_lsp").default_capabilities()
            vim.lsp.config['luals'] = {
                cmd = { 'lua-language-server' },
                filetypes = { 'lua' },
                root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
                capabilities = caps,
                settings = {
                    Lua = {
                        runtime = { version = 'LuaJIT' },
                        diagnostics = { globals = { 'vim' } },
                        telemetry = { enable = false },
                    },
                },
            }
            vim.lsp.config['cssls'] = {
                cmd = { 'vscode-css-language-server', '--stdio' },
                filetypes = { 'css', 'scss', 'less' },
                root_markers = { 'package.json', '.git' },
                capabilities = caps,
                settings = {
                    css = { validate = true },
                    scss = { validate = true },
                    less = { validate = true },
                },
            }
            vim.lsp.config['jsonls'] = {
                cmd = { 'vscode-json-languageserver', '--stdio' },
                filetypes = { 'json', 'jsonc' },
                root_markers = { 'package.json', '.git', 'config.jsonc' },
                capabilities = caps,
            }
            for name, _ in pairs(vim.lsp.config._configs) do
                if name ~= '*' then
                    vim.lsp.enable(name)
                end
            end
        end,
    },
}
