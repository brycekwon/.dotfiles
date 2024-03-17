return {
    'NeogitOrg/neogit',
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
    config = function()
        require('neogit').setup()
    end,
    keys = {
        { '<leader>gs', function() require('neogit').open() end, mode='n', silent=true, noremap=true },
        { '<leader>gc', ':Neogit commit<CR>', mode='n' , silent=true, noremap=true },
        { '<leader>gp', ':Neogit pull<CR>', mode='n' , silent=true, noremap=true },
        { '<leader>gP', ':Neogit push<CR>', mode='n' , silent=true, noremap=true },
    },
}

