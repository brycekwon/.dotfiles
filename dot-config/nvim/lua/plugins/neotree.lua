return {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
        {
            'nvim-lua/plenary.nvim',
            name='plenary'
        },
        {
            'nvim-tree/nvim-web-devicons',
            dependencies = {
                {
                    '/rachartier/tiny-devicons-auto-colors.nvim',
                    name = 'devicon-auto-colors',
                    config = function ()
                        require('tiny-devicons-auto-colors').setup({
                            colors = require("catppuccin.palettes").get_palette("mocha"),
                        })
                    end,
                    event = "VeryLazy",
                },
            },
            name='devicons'
        },
        {
            'MunifTanjim/nui.nvim',
            name='nui'
        },
    },
    name = 'neotree',
    config = function()
        require('neo-tree').setup()
    end,
    keys = {
        {'<leader>e', '<CMD>Neotree toggle<CR>', mode={'n', 'v'}, desc='Toggle filetree', noremap=true, silent=true },
        {'<leader>w', '<CMD>Neotree position=current<CR>', mode={'n', 'v'}, desc='Toggle Netrw', noremap=true, silent=true },
    },
}
