return {
    "nvim-treesitter/nvim-treesitter",
    name = "nvim-treesitter",
    config = function(_, _)
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "typescript",
                "javascript",
                "jsdoc",
                "json",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "lua",
                "python",
                "rust",
                "c",
                "cpp",
                "sql",
                "toml",
                "yaml",
                "regex",
                "csv",
                "diff",
                "vimdoc",
                "make",
            },
            highlight = {
                enable = true,
            },
            auto_install = true,
        })
    end,
}
