local wezterm = require 'wezterm'
local config = {}

config.scrollback_lines = 10000

config.color_scheme = "Github Dark"
config.window_background_opacity = 0.9
config.font_size = 13

config.window_frame = {
  font = wezterm.font { family = 'JetBrains Mono', weight = 'Bold' },
  font_size = 12.0,
  active_titlebar_bg = '#333333',
  inactive_titlebar_bg = '#333333',
}

config.colors = {
  tab_bar = {
    inactive_tab_edge = '#575757',
  },
}

config.window_background_gradient = {
  orientation = 'Vertical',
  colors = {
    '#0e001f',
    '#06010d',
  },
  interpolation = 'Linear',
  blend = 'Rgb',
}

return config
