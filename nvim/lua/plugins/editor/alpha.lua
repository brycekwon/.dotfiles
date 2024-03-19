return {
    'goolord/alpha-nvim',
    name = 'alpha',
    config = function()
        local dashboard = require('alpha.themes.dashboard')
        dashboard.section.buttons.val = {
            dashboard.button('SPC f f', '󰈞  Find file', '<CMD>Telescope find_files<CR>'),
            dashboard.button('SPC f g', '󰈬  Find word', '<CMD>Telescope live_grep<CR>'),
            dashboard.button('SPC n f', '  New file', ':e '),
            dashboard.button('SPC c s', '  Set theme', '<CMD>Telescope colorscheme<CR>'),
            dashboard.button('SPC l l', '  Lazy Manager', '<CMD>Lazy<CR>'),
        }
        require('alpha').setup(require'alpha.themes.dashboard'.config)
    end
}

