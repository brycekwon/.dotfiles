return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        {
            'nvim-lua/plenary.nvim',
            name = 'plenary',
        },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            name = 'telescope-fzf-native',
        },
    },
    name = 'telescope',
    opts = {
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = 'smart_case',
            },
        },
    },
    config = function(_, opts)
        local telescope = require('telescope')

        telescope.setup(opts)
        telescope.load_extension('fzf')
    end,
    keys = {
        { '<leader>ff', '<CMD>Telescope find_files<CR>', mode='n' },
        { '<leader>fg', '<CMD>Telescope live_grep<CR>', mode='n' },
        { '<leader>gb', '<CMD>Telescope git_branches<CR>', mode='n' },
        { '<leader>tn', '<CMD>Telescope notify<CR>', mode='n' },
    },
    cmd = { 'Telescope' },
}
