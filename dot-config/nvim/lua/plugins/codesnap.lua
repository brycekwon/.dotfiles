return {
    'mistricky/codesnap.nvim',
    build = 'make',
    name = 'codesnap',
    config = function()
        require("codesnap").setup({
            save_path = "~/Downloads",
            border = "rounded",
            has_breadcrumbs = true,
            bg_color = "#535c68",
            watermark = ""
        })

        vim.keymap.set({'x'}, '<leader>cc', '<CMD>CodeSnapSave<CR>', { noremap=true, silent=true } )
    end,
    event = "VeryLazy",
}
