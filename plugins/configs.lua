-- custom/plugins/configs.lua file

local M = {}

-- M.treesitter = {
--    ensure_installed = {
--       "lua",
--       "html",
--       "css",
--    },
-- }

M.nvimtree = {
   -- git = {
   --    enable = true,
   -- },
   view = {
	side = "left",
	width = 25,
	hide_root_folder = false,
     },
}

return M