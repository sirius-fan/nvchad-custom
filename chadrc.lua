---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "one_light",
  theme_toggle = { "one_light", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"
-- local userPlugins = require "custom.plugins" -- path to table
-- M.plugins = userPlugins

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
