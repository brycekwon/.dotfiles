return {
    'numToStr/Comment.nvim',
    name = 'comment',
    config = function()
        require('Comment').setup()
    end,
    keys = {
        { 'gc', mode='n' },
        { 'gc', mode='v' },
        { 'gb', mode='n' },
        { 'gb', mode='v' },
    },
}
