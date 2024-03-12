return {
    'windwp/nvim-ts-autotag',
    name = 'autotag',
    config = function()
        require('nvim-ts-autotag').setup()
    end,
    ft = {
        'javascript',
        'typescript',
        'html',
    },
}
