local wezterm = require("wezterm")

return {
	force_reverse_video_cursor = true,
	enable_tab_bar = false,
	window_decorations = "NONE",
	font = wezterm.font_with_fallback({
		"JetBrainsMonoNerdFont",
	}),
	font_size = 14,
	-- For window padding-> make it touch to corners
	window_padding = {
		left = 6,
		right = 5,
		top = 5,
		bottom = 2,
	},
	line_height = 1.0,
	colors = {
		foreground = "#dbbe98",
		background = "#19181b",
		cursor_bg = "#928374",
		cursor_fg = "#f0f0f0",
		cursor_border = "#f0f0f0",
		split = "#4c4c4c",
		ansi = { "#fbf1c7", "#ea6962", "#899B53", "#d8a657", "#7daea3", "#d3869b", "#98971a", "#7c6f64" },
		brights = { "#9d8374", "#fb4934", "#899B53", "#fabd2f", "#458588", "#d3869b", "#98971a", "#3c3836" },
		selection_fg = "#c8c093",
		selection_bg = "#2d4f67",
		scrollbar_thumb = "#16161d",
	},

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
