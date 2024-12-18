-- Import the wezterm module
local wezterm = require 'wezterm'
local appearance = require 'appearance'
local config = wezterm.config_builder()
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30
-- config.tab_bar_at_bottom = true
-- config.enable_tab_bar = false
-- config.window_decorations = 'RESIZE'
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE|MACOS_FORCE_ENABLE_SHADOW"
config.window_frame = {
  font = wezterm.font({ family = 'Berkeley Mono', weight = 'Bold' }),
  font_size = 11,
}

if appearance.is_dark() then
  config.color_scheme = 'Tokyo Night'
else
  config.color_scheme = 'Tokyo Night Day'
end

return config
