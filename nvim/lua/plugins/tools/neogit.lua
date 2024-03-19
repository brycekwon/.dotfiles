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
        { '<leader>gc', '<CMD>Neogit commit<CR>', mode='n' , silent=true, noremap=true },
        { '<leader>gp', '<CMD>Neogit pull<CR>', mode='n' , silent=true, noremap=true },
        { '<leader>gP', '<CMD>Neogit push<CR>', mode='n' , silent=true, noremap=true },
    },
}

