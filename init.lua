-- 配置入口
-- `vim.g.base46_cache` 指定了缓存目录的路径，
-- `vim.g.mapleader` 设置了领导键为空格键。
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
-- 接下来，代码定义了 `lazypath` 变量，它指向 `lazy.nvim` 插件的安装路径。如果该路径不存在，
-- 代码会使用 Git 克隆 `lazy.nvim` 插件的仓库到指定路径。
-- 然后，使用 `vim.opt.rtp:prepend(lazypath)` 将该路径添加到运行时路径中。
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

-- 之后，代码加载了 `configs.lazy` 配置文件，并使用 `require("lazy").setup` 方法来设置和加载插件。
-- 这里加载了两个插件配置，一个是 `NvChad/NvChad`，另一个是从 `plugins` 文件中导入的插件。
local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)


-- 代码还通过 `dofile` 方法加载了两个主题文件，分别是 `defaults` 和 `statusline`。
-- 接着，代码加载了 `options` 和 `nvchad.autocmds` 配置文件。
-- 最后，代码使用 `vim.schedule` 方法异步加载了 `mappings` 配置文件，以确保所有其他配置都已加载完毕。
-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
