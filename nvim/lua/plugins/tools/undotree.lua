return {
    'mbbill/undotree',
    name = 'undotree',
    init = function()
        vim.g.undotree_WindowLayout = 3
        vim.g.undotree_SplitWidth = 45
        vim.g.undotree_SetFocusWhenToggle = 1
        vim.opt.undodir = vim.fn.stdpath('data') .. '/undotree'
        vim.opt.undofile = true
    end,
    keys = {
        { '<leader>u', vim.cmd.UndotreeToggle, mode='n' },
        { '<leader>u', vim.cmd.UndotreeToggle, mode='v' },
    },
}
