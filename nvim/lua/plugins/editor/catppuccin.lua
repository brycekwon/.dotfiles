return {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
        integration = {
            alpha = true,
            nvimtree = true,
            treesitter = true,
            gitsigns = true,
            cmp = true,
            harpoon = true,
            indent_blankline = true,
            mason = true,
            neogit = true,
            telescope = {
                enabled = true,
            },
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = {
                        "italic"
                    },
                    hints = {
                        "italic"
                    },
                    warnings = {
                        "italic"
                    },
                    information = {
                        "italic"
                    },
                },
                underlines = {
                    errors = {
                        "underline"
                    },
                    hints = {
                        "underline"
                    },
                    warnings = {
                        "underline"
                    },
                    information = {
                        "underline"
                    },
                },
                inlay_hints = {
                    background = true,
                },
            },
        },
    },
    lazy = false,
    priority = 1000,
}

