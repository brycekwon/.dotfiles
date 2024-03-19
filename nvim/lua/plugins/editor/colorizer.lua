return {
    'NvChad/nvim-colorizer.lua',
    name = 'colorizer',
    opts = {
        filetypes = {
            "css",
            "html",
        },
        user_default_options = {
            names = true,
        },
    },
    config = function(_, opts)
        require('colorizer').setup(opts)
    end,
    ft = {
        'css',
        'html',
    }
}

