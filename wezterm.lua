local wezterm = require("wezterm")

return {
	default_prog = { "pwsh", "-nologo" },
	font = wezterm.font("Maple Mono NF"),
	font_size = 10,
	initial_cols = 130,
	initial_rows = 30,
	window_decorations = "RESIZE",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.9,
	color_scheme = "Dracula (Official)",

	mouse_bindings = {
		{
			event = { Down = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.StartWindowDrag,
		},
	},

	disable_default_key_bindings = true,
	keys = {
		{
			key = "+",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
		},
		{
			key = "_",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
		},
		{ key = "q", mods = "CTRL", action = wezterm.action({ CloseCurrentPane = { confirm = false } }) },
		{ key = "h", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "l", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
		{ key = "k", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "j", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "h", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }) },
		{ key = "l", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }) },
		{ key = "k", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }) },
		{ key = "j", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }) },
		{ key = "n", mods = "CTRL|SHIFT", action = wezterm.action.SpawnWindow },
		{ key = "w", mods = "CTRL", action = wezterm.action({ CloseCurrentTab = { confirm = false } }) },
		{ key = "p", mods = "CTRL", action = wezterm.action.ShowLauncher },
		{ key = "Insert", mods = "SHIFT", action = wezterm.action({ PasteFrom = "Clipboard" }) },
	},
}
