return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        {
            'nvim-tree/nvim-web-devicons',
            name = 'web-devicons',
        }
    },
    name = 'tree',
    opts = {
        renderer = {
            icons = {
                glyphs = {
                    folder = {
                        arrow_closed = '',
                        arrow_open = '',
                    },
                },
                show = {
                    file = true,
                    folder = true,
                    folder_arrow = true,
                    git = true,
                },
            },
            indent_markers = {
                enable = true,
            },
        },
        actions = {
            open_file = {
                window_picker = {
                    enable = false,
                },
            },
        },
        filters = {
            custom = {
                '*.DS_Store',
                '*.localized',
                '*.git',
                '**node_modules',
            },
        },
        git = {
            ignore = false,
        },
        view = {
            side = 'left',
            width = 45,
        },
        disable_netrw = true,
        sort = {
            sorter = 'case_sensitive',
        },
    },
    config = function(_, opts)
        require('nvim-tree').setup(opts)
        vim.keymap.set({'n', 'v'}, '<leader>e', '<CMD>NvimTreeToggle<CR>')
    end,
}

