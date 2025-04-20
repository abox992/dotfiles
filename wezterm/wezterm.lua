local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font {
  family = 'JetBrains Mono',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
-- config.color_scheme = 'Batman'

config.animation_fps = 120
config.max_fps = 120

return config
