local wezterm = require("wezterm")
return {
	force_reverse_video_cursor = true,
	colors = {
		-- foreground = "#c5c9c5",
		-- background = "#151515",
		--
		-- cursor_bg = "#c8c093",
		-- cursor_fg = "#c8c093",
		-- cursor_border = "#c8c093",
		--
		-- selection_fg = "#C8C093",
		-- selection_bg = "#2D4F67",
		--
		-- scrollbar_thumb = "#16161d",
		-- split = "#16161d",
		--
		-- ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
		-- brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
		-- indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
		foreground = "#c0caf5",
		background = "#11121D",
		cursor_bg = "#c0caf5",
		cursor_border = "#c0caf5",
		cursor_fg = "#1a1b26",
		selection_bg = "#283457",
		selection_fg = "#c0caf5",
		split = "#7aa2f7",
		compose_cursor = "#ff9e64",

		ansi = { "#15161e", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6" },
		brights = { "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5" },
	},

	enable_tab_bar = false,
	font_size = 15,
	font = wezterm.font("JetbrainsMonoNL Nerd Font"),
	--window_background_opacity = 1,
	--text_background_opacity = 1,
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
