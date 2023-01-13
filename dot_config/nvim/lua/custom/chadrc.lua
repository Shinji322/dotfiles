-- Just an example, supposed to be placed in /lua/custom/
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
M.ui = {
  theme = "gruvchad",
  theme_toggle = { "gruvchad", "onedark" },
  transparency = true,
}

M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

return M
