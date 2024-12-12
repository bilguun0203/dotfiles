local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

config.scrollback_lines = 10000

-- config.color_scheme = "Github Dark"
-- config.color_scheme = "Github"
config.color_scheme = "Rosé Pine (base16)"
-- config.color_scheme = "Rosé Pine Dawn (base16)"
-- config.color_scheme = "Kanagawa (Gogh)"
config.window_background_opacity = 0.96
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.window_frame = {
	font = wezterm.font({ family = "JetBrains Mono", weight = "Bold" }),
	font_size = 10.0,
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#333333",
}

if wezterm.target_triple == 'aarch64-apple-darwin' then
	config.font_size = 14
  config.window_frame.font_size = 12
else
	config.font_size = 10
end


config.colors = {
	tab_bar = {
		inactive_tab_edge = "#575757",
	},
}

-- config.window_background_gradient = {
--   orientation = 'Vertical',
--   colors = {
--     '#0e001f',
--     '#06010d',
--   },
--   interpolation = 'Linear',
--   blend = 'Rgb',
-- }

config.mouse_bindings = {
	-- Change the default click behavior so that it only selects
	-- text and doesn't open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = act.CompleteSelection("ClipboardAndPrimarySelection"),
	},

	-- and make CTRL-Click open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.OpenLinkAtMouseCursor,
	},
}

config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

return config
