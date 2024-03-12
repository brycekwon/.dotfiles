return {
    'folke/which-key.nvim',
    name = 'which-key',
    config = function()
        require('which-key').setup()
    end,
    event = "VeryLazy",
}
