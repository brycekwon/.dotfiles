return {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('colorizer').setup()
    end,
    name = 'colorizer',
    ft = {
        'css'
    },
}
