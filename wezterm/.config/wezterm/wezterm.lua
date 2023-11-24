local wezterm = require("wezterm")
-- Custom background for catppuccin
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#121212"
custom.foreground = "#B4BDC3"
custom.cursor_fg = "#1C1917"
custom.cursor_bg = "#C4CACF"
custom.cursor_border = "#1C1917"
custom.selection_fg = "#B4BDC3"
custom.selection_bg = "#3D4042"
return {
	color_schemes = {
		["customcatppuccin"] = custom,
	},
	color_scheme = "customcatppuccin",
	enable_tab_bar = false,
	font_size = 15.0,
	font = wezterm.font("JetbrainsMonoNL Nerd Font"),

	window_decorations = "TITLE|RESIZE",
	-- macos_window_background_blur = 40,
	-- macos_window_background_blur = 30,

	-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
	-- window_background_image_hsb = {
	-- 	brightness = 0.01,
	-- 	hue = 1.0,
	-- 	saturation = 0.5,
	-- },
	-- window_background_opacity = 0.92,
	window_background_opacity = 1,
	-- window_background_opacity = 0.78,
	-- window_background_opacity = 0.20,
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
