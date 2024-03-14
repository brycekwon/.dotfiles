return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "hrsh7th/nvim-cmp",
            dependencies = {
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-nvim-lsp",
            },
        },
        {
            "L3MON4D3/LuaSnip",
            name = "luasnip",
        },
        {
            "onsails/lspkind.nvim",
            name = "lspkind",
        },
        {
            "williamboman/mason.nvim",
            name = "mason",
        },
        {
            "williamboman/mason-lspconfig.nvim",
            name = "mason-lspconfig",
        },
    },
    name = "nvim-lspconfig",
    config = function(_, _)
        local lspconfig = require("lspconfig")
        local luasnip = require('luasnip')
        local lspkind = require("lspkind")
        local cmp = require("cmp")

        require('luasnip.loaders.from_vscode').lazy_load()

        vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP Actions",
            callback = function()
                local bufmap = function(mode, lhs, rhs)
                    local opts = { buffer = true }
                    vim.keymap.set(mode, lhs, rhs, opts)
                end

                -- Displays hover information about the symbol under the cursor
                bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

                -- Jump to the definition
                bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

                -- Jump to declaration
                bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

                -- Lists all the implementations for the symbol under the cursor
                bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

                -- Lists all the references 
                bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

                -- Show diagnostics in a floating window
                bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

                -- Move to the previous diagnostic
                bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

                -- Move to the next diagnostic
                bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
            end
        })

        local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                "clangd",
                "pylsp",
                "rust_analyzer",
                "tsserver",
                "html",
                "cssls",
                "jsonls",
                "bashls",
                "lua_ls",
                "hls",
            },
        })

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },
            sources = {
                { name = 'path' },
                { name = 'nvim_lsp', keyword_length = 1 },
                { name = 'buffer', keyword_length = 3 },
                { name = 'luasnip', keyword_length = 2 },
            },
            window = {
                documentation = cmp.config.window.bordered()
            },
            formatting = {
                fields = {'menu', 'abbr', 'kind'},
                format = lspkind.cmp_format({
                    maxwdith = 50,
                    ellipsis_char = "...",
                }),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-,>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-.>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-k>"] = cmp.mapping.scroll_docs(-4),
                ["<C-j>"] = cmp.mapping.scroll_docs(4),
                ["<C-w>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-q>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
        })

        local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig["clangd"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["pylsp"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["rust_analyzer"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["tsserver"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["html"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["cssls"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["jsonls"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["bashls"].setup({
            capabilities = lsp_capabilities,
        })

        lspconfig["lua_ls"].setup({
            capabilities = lsp_capabilities,
            settings = {
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = {
                            "vim"
                        },
                    },
                    workspace = {
                        -- make language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })

        lspconfig["hls"].setup({
            capabilities = lsp_capabilities,
        })
    end
}
