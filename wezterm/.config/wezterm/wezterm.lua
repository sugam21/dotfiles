local wezterm = require("wezterm")

return {
	force_reverse_video_cursor = true,
	enable_tab_bar = false,
	font = wezterm.font_with_fallback({
		"JetBrainsMonoNerdFont",
	}),
	font_size = 14,
	-- For window padding-> make it touch to corners
	window_padding = {
		left = 6,
		right = 6,
		top = 6,
		bottom = 2,
	},
	line_height = 1.0,
	harfbuzz_features = { "ss13" },

	allow_square_glyphs_to_overflow_width = "Always",
	colors = {
		foreground = "#f0f0f0",
		background = "#191919",
		cursor_bg = "#f0f0f0",
		cursor_fg = "#f0f0f0",
		cursor_border = "#262626",
		split = "#4c4c4c",
		ansi = { "#8f8aac", "#ac8a8c", "#8aac8b", "#aca98a", "#8aabac", "#ac8aac", "#8aabac", "#e7e7e8" },
		brights = { "#a39ec4", "#c49ea0", "#9ec49f", "#c4c19e", "#9ec3c4", "#c49ec4", "#9ec3c4", "#f0f0f0" },
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
