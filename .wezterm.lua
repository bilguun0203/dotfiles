local wezterm = require 'wezterm'
local config = {}

config.window_background_opacity = 0.9
config.font_size = 10

config.window_frame = {
  font = wezterm.font { family = 'JetBrainsMono Nerd Font', weight = 'Bold' },
  font_size = 10,
  active_titlebar_bg = '#333333',
  inactive_titlebar_bg = '#333333',
}

config.colors = {
  tab_bar = {
    inactive_tab_edge = '#575757',
  },
}

config.color_scheme = "Catppuccin Mocha"
config.color_scheme = "GitHub Dark"

config.audible_bell = 'Disabled'

return config

