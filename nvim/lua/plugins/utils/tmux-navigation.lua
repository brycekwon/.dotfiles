return {
    'alexghergh/nvim-tmux-navigation',
    name = 'tmux-navigation',
    opts = {
        disable_when_zoomed = true,
    },
    keys = {
        { '<C-h>', '<CMD>NvimTmuxNavigateLeft<CR>', mode='n' },
        { '<C-l>', '<CMD>NvimTmuxNavigateRight<CR>', mode='n' },
        { '<C-k>', '<CMD>NvimTmuxNavigateUp<CR>', mode='n' },
        { '<C-j>', '<CMD>NvimTmuxNavigateDown<CR>', mode='n' },
    },
}
