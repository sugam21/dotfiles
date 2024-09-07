local wezterm = require("wezterm")

return {
	force_reverse_video_cursor = true,
	enable_tab_bar = false,
	window_decorations = "TITLE | RESIZE",
	font = wezterm.font_with_fallback({
		--"JetBrainsMono Nerd Font",
		--"CaskaydiaCove Nerd Font",
		"FiraCode Nerd Font",
	}),

	font_size = 15.0,
	color_scheme = "Tomorrow Night",
	--color_scheme = "Twilight (base16)",
	--color_scheme = "Gruvbox dark, hard (base16)",
	-- color_scheme = "GruvboxDarkHard",
	-- For window padding-> make it touch to corners

	window_padding = {
		left = 2,
		right = 2,
		top = 2,
		bottom = 2,
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
