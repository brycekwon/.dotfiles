return {
    'goolord/alpha-nvim',
    name = 'alpha',
    config = function()
        local dashboard = require('alpha.themes.dashboard')
        dashboard.section.buttons.val = {
            dashboard.button('SPC f f', '󰈞  Find file', '<CMD>Telescope find_files<CR>'),
            dashboard.button('SPC f g', '󰈬  Find word', '<CMD>Telescope live_grep<CR>'),
            dashboard.button('SPC L', '  Lazy Manager', '<CMD>Lazy<CR>'),
            dashboard.button('e', '  New file', ':e '),
        }
        require('alpha').setup(require'alpha.themes.dashboard'.config)
    end
}

