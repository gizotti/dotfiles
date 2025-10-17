local wezterm = require("wezterm")
local config = wezterm.config_builder()
local action = wezterm.action

config.font = wezterm.font({
	family = "JetBrains Mono",
	weight = "Regular",
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
})
config.font_size = 14.0
config.line_height = 1.0

config.color_scheme = "Tokyo Night"

config.window_padding = { left = "0.5cell", right = "0.5cell", top = "0.5cell", bottom = "0.5cell" }
config.default_cursor_style = "BlinkingBar"

config.window_decorations = "RESIZE|INTEGRATED_BUTTONS"
config.window_background_opacity = 0.90
config.macos_window_background_blur = 20

-- https://github.com/wez/wezterm/issues/3299#issuecomment-2145712082
wezterm.on("gui-startup", function(cmd)
	local active = wezterm.gui.screens().active
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:guiwindow():setposition(active.x, active.y)
	window:guiwindow():set_innersize(active.width, active.height)
end)

config.keys = {
	{ key = "d", mods = "CMD|SHIFT", action = action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "CMD", action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "k", mods = "CMD", action = action.ClearScrollback("ScrollbackAndViewport") },
	{ key = "w", mods = "CMD", action = action.CloseCurrentPane({ confirm = false }) },
	{ key = "w", mods = "CMD|SHIFT", action = action.CloseCurrentTab({ confirm = false }) },
	{ key = "p", mods = "CMD|SHIFT", action = action.ActivateCommandPalette },
	{
		key = "LeftArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bb" }),
	},
	-- Make Option-Right equivalent to Alt-f; forward-word
	{
		key = "RightArrow",
		mods = "OPT",
		action = wezterm.action({ SendString = "\x1bf" }),
	},
	-- Select next tab with cmd-opt-left/right arrow
	{
		key = "LeftArrow",
		mods = "CMD|OPT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "RightArrow",
		mods = "CMD|OPT",
		action = wezterm.action.ActivateTabRelative(1),
	},
	-- Select next pane with cmd-left/right arrow
	{
		key = "LeftArrow",
		mods = "CMD",
		action = wezterm.action({ ActivatePaneDirection = "Prev" }),
	},
	{
		key = "RightArrow",
		mods = "CMD",
		action = wezterm.action({ ActivatePaneDirection = "Next" }),
	},
	-- on cmd-s, send esc, then ':w<enter>'. This makes cmd-s trigger a save action in neovim
	{
		key = "s",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1b:w\n" }),
	},
	{
		key = "Enter",
		mods = "SHIFT",
		action = wezterm.action.SendString("\n"),
	},
}

return config
