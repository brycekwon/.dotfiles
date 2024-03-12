local wezterm = require("wezterm")

return {
    automatically_reload_config = true,
    color_scheme = 'Catppuccin Mocha',
    enable_tab_bar = false,
    initial_rows = 46,
    initial_cols = 168,
    font_size = 16.0,
    font = wezterm.font('MesloLGS Nerd Font Mono'),
    -- initial_rows = 45,
    -- initial_cols = 160,
    -- font_size = 16.0,
    -- font = wezterm.font('ComicShannsMono Nerd Font Mono'),
    -- initial_rows = 40,
    -- initial_cols = 150,
    -- font_size = 14.0,
    -- font = wezterm.font('OpenDyslexicM Nerd Font Mono'),
    macos_window_background_blur = 30,
    window_background_opacity = 0.9,
    window_decorations = 'RESIZE',
    animation_fps = 60,
    front_end = 'WebGpu',
    webgpu_power_preference = 'HighPerformance',
    window_close_confirmation = 'NeverPrompt',
    hyperlink_rules = {
        -- Matches: a URL in parens: (URL)
        {
            regex = '\\((\\w+://\\S+)\\)',
            format = '$1',
            highlight = 1,
        },
        -- Matches: a URL in brackets: [URL]
        {
            regex = '\\[(\\w+://\\S+)\\]',
            format = '$1',
            highlight = 1,
        },
        -- Matches: a URL in curly braces: {URL}
        {
            regex = '\\{(\\w+://\\S+)\\}',
            format = '$1',
            highlight = 1,
        },
        -- Matches: a URL in angle brackets: <URL>
        {
            regex = '<(\\w+://\\S+)>',
            format = '$1',
            highlight = 1,
        },
        -- Then handle URLs not wrapped in brackets
        {
            regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
            format = '$0',
        },
        -- implicit mailto link
        {
            regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
            format = 'mailto:$0',
        },
    },
    keys = {
        {
            key = 'f',
            mods = 'CMD|SHIFT',
            action = wezterm.action.ToggleFullScreen,
        },
    },
    mouse_bindings = {
        {
            event = { Up = { streak = 1, button = 'Left' } },
            mods = 'CTRL',
            action = wezterm.action.OpenLinkAtMouseCursor,
        },
    },
}
