return {
    'neogitorg/neogit',
    dependencies = {
        {
            'nvim-lua/plenary.nvim',
            name = "plenary",
        },
        {
            'sindrets/diffview.nvim',
            name = "diffview",
        },
        {
            'nvim-telescope/telescope.nvim',
            name = "telescope",
        },
    },
    name = 'neogit',
    config = function()
        require('neogit').setup()
    end,
    keys = {
        { '<leader>gs', function() require('neogit').open() end, mode={'n', 'v'}, desc='Toggle neogit', noremap=true, silent=true },
    },
}
