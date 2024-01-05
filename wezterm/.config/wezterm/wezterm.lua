local wezterm = require("wezterm")

return {
	force_reverse_video_cursor = true,
	enable_tab_bar = false,
	font = wezterm.font_with_fallback({
		"JetBrainsMonoNerdFont",
	}),
	font_size = 15,

	line_height = 1.0,
	harfbuzz_features = { "ss13" },

	allow_square_glyphs_to_overflow_width = "Always",
	color_scheme = "Gruvbox Dark Hard",
	color_schemes = {
		["Gruvbox Dark Hard"] = {
			foreground = "#ebdbb2",
			background = "#151515",
			cursor_bg = "#ebdbb2",
			cursor_fg = "#333333",
			cursor_border = "#ebdbb2",
			selection_fg = "#333333",
			selection_bg = "#ebdbb2",
			scrollbar_thumb = "#333333",
			split = "#333333",
			ansi = {
				"#282828",
				"#cc241d",
				"#98971a",
				"#d79921",
				"#458588",
				"#b16286",
				"#689d6a",
				"#a89984",
			},
			brights = {
				"#928374",
				"#fb4934",
				"#b8bb26",
				"#fabd2f",
				"#83a598",
				"#d3769b",
				"#8ec07c",
				"#ebdbb2",
			},
		},
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
