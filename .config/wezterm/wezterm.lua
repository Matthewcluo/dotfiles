-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "tokyonight_night"

config.window_background_opacity = 0.93
config.window_decorations = "RESIZE"

config.font_size = 16

config.max_fps = 240

-- disables ligature and other font features
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.tab_max_width = 32

-- Keybinds
-- local act = wezterm.action
-- config.keys = {
-- 	-- Pane Creation
-- 	{ -- Splits Vertically; creates 2 Horizontal Splits : BORGUIR
-- 		key = "-",
-- 		mods = "CTRL",
-- 		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	{ -- Splits Horizontally; creates 2 Vertical Splits : HAWT DAWG
-- 		key = "=",
-- 		mods = "CTRL",
-- 		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	-- Pane/Tab/Window Deletion (in that order)
-- 	{
-- 		key = "w",
-- 		mods = "CMD",
-- 		action = act.CloseCurrentPane({ confirm = true }),
-- 	},
-- 	-- Left-ward pane controls
-- 	{ -- moves focus one pane to the left
-- 		key = "h",
-- 		mods = "CTRL",
-- 		action = act.ActivatePaneDirection("Left"),
-- 	},
-- 	{ -- shifts current pane's size to the left
-- 		key = "H",
-- 		mods = "CTRL",
-- 		action = act.AdjustPaneSize({ "Left", 1 }),
-- 	},
-- 	-- Right-ward pane controls
-- 	{ -- moves focus one pane to the right
-- 		key = "l",
-- 		mods = "CTRL",
-- 		action = act.ActivatePaneDirection("Right"),
-- 	},
-- 	{ -- shifts current pane's size to the right
-- 		key = "L",
-- 		mods = "CTRL",
-- 		action = act.AdjustPaneSize({ "Right", 1 }),
-- 	},
-- 	-- Up-ward pane controls
-- 	{ -- moves focus one pane up
-- 		key = "k",
-- 		mods = "CTRL",
-- 		action = act.ActivatePaneDirection("Up"),
-- 	},
-- 	{ -- shifts current pane's size one block up
-- 		key = "K",
-- 		mods = "CTRL",
-- 		action = act.AdjustPaneSize({ "Up", 1 }),
-- 	},
-- 	-- Down-ward pane controls
-- 	{ -- moves focus one pane down
-- 		key = "j",
-- 		mods = "CTRL",
-- 		action = act.ActivatePaneDirection("Down"),
-- 	},
-- 	{ -- shifts current pane's size one block down
-- 		key = "J",
-- 		mods = "CTRL",
-- 		action = act.AdjustPaneSize({ "Down", 1 }),
-- 	},
-- 	-- activate pane selection mode with the default alphabet (labels are "a", "s", "d", "f" and so on)
-- 	{
-- 		key = "8",
-- 		mods = "CTRL",
-- 		action = act.PaneSelect,
-- 	},
-- 	-- activate pane selection mode with numeric labels
-- 	{
-- 		key = "9",
-- 		mods = "CTRL",
-- 		action = act.PaneSelect({
-- 			alphabet = "1234567890",
-- 		}),
-- 	},
-- 	-- show the pane selection mode, but have it swap the active and selected panes
-- 	{
-- 		key = "0",
-- 		mods = "CTRL",
-- 		action = act.PaneSelect({
-- 			mode = "SwapWithActive",
-- 		}),
-- 	},
-- 	{
-- 		key = "\r",
-- 		mods = "CTRL",
-- 		action = act.TogglePaneZoomState,
-- 	},
-- 	-- Reset Font and Window Size (mainly when opening WezTerm on a second monitor)
-- 	{
-- 		key = "\\",
-- 		mods = "CTRL",
-- 		action = act.ResetFontAndWindowSize,
-- 	},
-- }

-- and finally, return the configuration to wezterm
return config
