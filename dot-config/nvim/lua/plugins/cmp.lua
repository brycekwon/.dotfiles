return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        {
            'hrsh7th/cmp-path',
            name = 'cmp-path',
        },
        {
            'hrsh7th/cmp-buffer',
            name = 'cmp-buffer',
        },
        {
            'hrsh7th/cmp-cmdline',
            name = 'cmp-cmdline',
        },
        {
            'L3MON4D3/LuaSnip',
            build = 'make install_jsregexp',
            name='luasnip',
        },
        {
            'onsails/lspkind.nvim',
            name = 'lspkind',
        },
    },
    name = 'cmp',
    config = function()
        require('luasnip.loaders.from_vscode').lazy_load()

        local cmp = require('cmp')
        cmp.setup({
            completion = {
                completeopt = 'menu,menuone,preview,noselect',
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            sources = {
                { name = 'nvim_lsp', keyword_length = 2 },
                { name = 'luasnip', keyword_length = 2 },
                { name = 'buffer', keyword_length = 0, max_item_count = 0, is_buffer = false },
                { name = 'path', keyword_length = 2 },
            },
            window = {
                documentation = cmp.config.window.bordered(),
                completion = cmp.config.window.bordered(),
            },
            formatting = {
                fields = {'menu', 'abbr', 'kind'},
                format = require('lspkind').cmp_format({
                    maxwdith = 50,
                    ellipsis_char = '...',
                }),
            },
            mapping = cmp.mapping.preset.insert({
                ['<S-TAB>'] = cmp.mapping.select_prev_item(),
                ['<TAB>'] = cmp.mapping.select_next_item(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
            }),
            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            }),
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({}, {
                    {
                        name = 'cmdline',
                        option = {
                            ignore_cmds = { 'Man', '!' }
                        }
                    }
                })
            })
        })

    end,
    event = 'InsertEnter',
}
