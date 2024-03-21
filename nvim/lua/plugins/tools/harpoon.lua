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
        { '<leader>1', function() require('harpoon'):list():select(1) end, mode='n' },
        { '<leader>2', function() require('harpoon'):list():select(2) end, mode='n' },
        { '<leader>3', function() require('harpoon'):list():select(3) end, mode='n' },
        { '<leader>4', function() require('harpoon'):list():select(4) end, mode='n' },
        { '<leader>5', function() require('harpoon'):list():select(5) end, mode='n' },
        { '<leader>6', function() require('harpoon'):list():select(6) end, mode='n' },
        { '<leader>7', function() require('harpoon'):list():select(7) end, mode='n' },
        { '<leader>8', function() require('harpoon'):list():select(8) end, mode='n' },
        { '<leader>9', function() require('harpoon'):list():select(9) end, mode='n' },
    }
}
