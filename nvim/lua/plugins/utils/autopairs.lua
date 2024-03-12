return {
    "windwp/nvim-autopairs",
    dependencies = {
        {
            "windwp/nvim-ts-autotag",
            name = "nvim-ts-autotag",
        }
    },
    name = "nvim-autopairs",
    opts = {
        check_ts = true,
        ts_config = {
            lua = {
                "string"
            },
            javascript = {
                "template_string"
            },
        },
    },
}

