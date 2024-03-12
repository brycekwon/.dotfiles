return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        {
            "nvim-tree/nvim-web-devicons",
            name = "nvim-web-devicons"
        },
    },
    name = "nvim-tree",
    opts = {
        renderer = {
            icons = {
                glyphs = {
                    folder = {
                        arrow_closed = "",
                        arrow_open = "",
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
                "*.DS_Store",
                "*.localized",
                "*.git",
                "**node_modules",
            },
        },
        git = {
            ignore = false,
        },
        view = {
            side = "left",
            width = 45,
        },
        disable_netrw = true,
        sort = {
            sorter = "case_sensitive",
        },
    },
    keys = {
        { "<leader>e", ":NvimTreeToggle<CR>", mode="n", desc="toggles nvim-tree gui" },
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)
        vim.cmd([[ highlight NvimTreeIndentMarker guifg=#89DCEB ]])
    end,
    lazy = false
}
