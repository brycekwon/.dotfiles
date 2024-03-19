return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    name = 'treesitter',
    config = function(_, _)
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                'bash',
                'typescript',
                'javascript',
                'jsdoc',
                'json',
                'html',
                'css',
                'markdown',
                'markdown_inline',
                'lua',
                'python',
                'rust',
                'c',
                'cpp',
                'sql',
                'toml',
                'yaml',
                'regex',
                'csv',
                'diff',
                'vimdoc',
                'make',
            },
            highlight = {
                enable = true,
            },
            auto_install = true,
            indent = {
                enable = true,
            },
            additional_vim_regex_highlighting = false
        })
    end,
}
