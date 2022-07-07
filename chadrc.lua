-- This is an example chadrc file , its supposed to be placed in /lua/custom/
local M = {}
local pluginConfs = require "custom.plugins.configs"
local userPlugins = require "custom.plugins" -- path to table

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui= {
    theme = "onedark"
}

M.plugins = {
    -- 添加自定义插件
    -- user = require "custom.plugins",
    user = userPlugins,
    -- 覆盖默认插件设置，不用全部重写
    override = {
        --   ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
        ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree
    },

    options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
}

-- 修改whichkey

return M
