return {
    'lukas-reineke/indent-blankline.nvim',
    name = 'indent',
    config = function()
        require('ibl').setup()
    end,
    event = "BufRead",
}

