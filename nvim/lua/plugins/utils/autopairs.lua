return {
    'windwp/nvim-autopairs',
    dependencies = {
        {
            'windwp/nvim-ts-autotag',
            name = 'ts-autotag',
        }
    },
    name = 'autopairs',
    opts = {
        check_ts = true,
        ts_config = {
            lua = {
                'string'
            },
            javascript = {
                'template_string'
            },
        },
    },
    event = 'BufRead',
}

