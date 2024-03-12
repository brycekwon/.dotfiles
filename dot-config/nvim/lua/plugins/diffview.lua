return {
    'sindrets/diffview.nvim',
    name = 'diffview',
    keys = {
        {'<leader>do', '<CMD>DiffviewOpen<CR>', mode={'n', 'v'}, desc='Open diff view', noremap=true, silent=true },
        {'<leader>dx', '<CMD>DiffviewClose<CR>', mode={'n', 'v'}, desc='Close diff view', noremap=true, silent=true },
    }
}
