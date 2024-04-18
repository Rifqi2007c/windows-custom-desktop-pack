-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices 
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.font = wezterm.font'0xProto Nerd Font'
config.keys = {

    -- This will create a new split and run your default program inside it
  
    {
  
      key = '"',
  
      mods = 'CTRL|SHIFT|ALT',
  
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  
    },
  
  }

-- For example, changing the color scheme:
config.colors = {
  -- The default text color
  foreground = '#DFFCFF',
  -- The default background color
  background = '#002B36',

  -- Overrides the cell background color when the current cell is occupied by the
  -- cursor and the cursor style is set to Block
  cursor_bg = '#FFFFFF',
  -- Overrides the text color when the current cell is occupied by the cursor
  cursor_fg = 'black',
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = '#FFFFFF',

  -- the foreground color of selected text
  selection_fg = 'black',
  -- the background color of selected text
  selection_bg = '#fffacd',

  -- The color of the scrollbar "thumb"; the portion that represents the current viewport
  scrollbar_thumb = '#222222',

  -- The color of the split lines between panes
  split = '#444444',

  ansi = {
    '#000405',
    '#DC322F',
    '#859900',
    '#B58900',
    '#268BD2',
    '#6C60B0',
    '#2AA198',
    '#EEE8D5',
  },
  brights = {
    '#819B9E',
    '#CB4B16',
    '#6CC700',
    '#FFC100',
    '#2EC3FF',
    '#7076CC',
    '#39D9CD',
    '#FDF6E3',
  },

  -- Arbitrary colors of the palette in the range from 16 to 255
  indexed = { [136] = '#af8700' },

  -- Since: 20220319-142410-0fcdea07
  -- When the IME, a dead key or a leader key are being processed and are effectively
  -- holding input pending the result of input composition, change the cursor
  -- to this color to give a visual cue about the compose state.
  compose_cursor = 'orange',

  -- Colors for copy_mode and quick_select
  -- available since: 20220807-113146-c2fee766
  -- In copy_mode, the color of the active text is:
  -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
  -- 2. selection_* otherwise
  copy_mode_active_highlight_bg = { Color = '#000000' },
  -- use `AnsiColor` to specify one of the ansi color palette values
  -- (index 0-15) using one of the names "Black", "Maroon", "Green",
  --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
  -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
  copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
  copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
  copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

  quick_select_label_bg = { Color = 'peru' },
  quick_select_label_fg = { Color = '#ffffff' },
  quick_select_match_bg = { AnsiColor = 'Navy' },
  quick_select_match_fg = { Color = '#ffffff' },
}



--- Set Pwsh as the default on Windows
config.default_prog = { 'pwsh.exe' }

window_decorations = "NONE"

-- and finally, return the configuration to wezterm
return config
