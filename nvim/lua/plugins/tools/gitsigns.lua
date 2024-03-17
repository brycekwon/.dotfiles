return {
    'lewis6991/gitsigns.nvim',
    name = 'gitsigns',
    config = function()
        local gitsigns = require('gitsigns')
        gitsigns.setup()

        vim.keymap.set({'n', 'v'}, '<leader>hs', '<CMD>Gitsigns stage_hunk<CR>')
        vim.keymap.set({'n', 'v'}, '<leader>hr', '<CMD>Gitsigns reset_hunk<CR>')
        vim.keymap.set('n', '<leader>hS', gitsigns.stage_buffer)
        vim.keymap.set('n', '<leader>ha', gitsigns.stage_hunk)
        vim.keymap.set('n', '<leader>hu', gitsigns.undo_stage_hunk)
        vim.keymap.set('n', '<leader>hd', gitsigns.diffthis)
        vim.keymap.set('n', '<leader>hD', function() gitsigns.diffthis('~') end)
    end,
    event = 'BufRead',
}
