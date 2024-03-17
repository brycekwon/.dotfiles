return {
    'NvChad/nvim-colorizer.lua',
    name = 'colorizer',
    config = function()
        require("colorizer").setup()
    end,
    ft = {
        "css",
        "html",
    }
}

