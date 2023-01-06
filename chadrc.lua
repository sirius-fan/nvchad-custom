-- This is an example chadrc file , its supposed to be placed in /lua/custom/
local M = {}
-- local pluginConfs = require "custom.plugins.configs"
local userPlugins = require "custom.plugins" -- path to table
-- local override = require "custom.override"

M.plugins = userPlugins

-- make sure you maintain the structure of `core/default_config.lua` here,

M.ui= {
    theme = "one_light"
}

-- 修改whichkey

return M
