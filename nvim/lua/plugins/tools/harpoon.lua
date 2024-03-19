return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        {
            'nvim-lua/plenary.nvim',
            name = 'plenary',
        },
    },
    name = 'harpoon',
    keys = {
        { '<leader>a', function() require('harpoon'):list():append() end, mode='n' },
        { '<leader>z', function() local harpoon = require('harpoon') harpoon.ui:toggle_quick_menu(harpoon:list()) end, mode='n' },
        { '<C-1>', function() require('harpoon'):list():select(1) end, mode='n' },
        { '<C-2>', function() require('harpoon'):list():select(2) end, mode='n' },
        { '<C-3>', function() require('harpoon'):list():select(3) end, mode='n' },
        { '<C-4>', function() require('harpoon'):list():select(4) end, mode='n' },
        { '<C-5>', function() require('harpoon'):list():select(5) end, mode='n' },
    }
}
