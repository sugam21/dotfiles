local wezterm = require("wezterm")

return {
	force_reverse_video_cursor = true,
	enable_tab_bar = false,
	window_decorations = "TITLE | RESIZE",
	font = wezterm.font_with_fallback({
		"JetBrainsMonoNL Nerd Font",
	}),
	font_size = 14,
	-- color_scheme = "Tomorrow Night",
	color_scheme = "Gruvbox dark, hard (base16)",
	-- color_scheme = "GruvboxDarkHard",
	-- For window padding-> make it touch to corners
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
	line_height = 1.0,
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
