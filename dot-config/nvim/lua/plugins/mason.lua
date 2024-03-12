return     {
    'williamboman/mason.nvim',
    dependencies = {
        {
            'williamboman/mason-lspconfig.nvim',
            name = 'mason-lsp',
        },
    },
    name = 'mason',
    config = function()
        require('mason').setup({
            ui = {
                icons = {
                    package_installed = '✓',
                    package_pending = '➜',
                    package_uninstalled = '✗',
                },
            },
        })

        require('mason-lspconfig').setup({
            ensure_installed = {
                'bashls', 'clangd', 'cssls', 'cssmodules_ls', 'gopls', 'html', 'marksman',
                'jedi_language_server', 'lua_ls', 'rust_analyzer', 'tsserver',
            },
        })
    end,
}
