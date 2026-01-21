-- Pull in the wezterm API
local wezterm = require('wezterm')

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { 'nvim' }

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28
config.hide_tab_bar_if_only_one_tab = true

-- or, changing the font size and color scheme.
config.font_size = 14
config.color_scheme = 'OneDark (base16)'
config.font = wezterm.font(
  'SauceCodePro Nerd Font Mono',
  { weight = 'Medium', stretch = 'Normal', style = 'Normal' }
)

-- Finally, return the configuration to wezterm:
return config
