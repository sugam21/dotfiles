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
		background = "#19181b",
		cursor_bg = "#f0f0f0",
		cursor_fg = "#f0f0f0",
		cursor_border = "#262626",
		split = "#4c4c4c",
		ansi = { "#fbf1c7", "#cc241d", "#98971a", "#d79921", "#458588", "#b16186", "#689d69", "#7c6f64" },
		brights = { "#9d8374", "#9d0006", "#79740e", "#b57614", "#076678", "#8f3f71", "#427b58", "#3c3836" },
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
