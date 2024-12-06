-- **lua/plugins/init.lua**：这个文件定义了要加载的插件列表，并为每个插件指定了配置。
-- 对于插件的配置 可以require配置,也可以直接在这里写
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = 
    {
        git = {
          enable = true,
        },
        view = {
              side = "left",
              width = 25,
              -- hide_root_folder = false
          },
      
        renderer = {
          root_folder_label = true,
          highlight_git = true,
          icons = {
            show = {
              git = true,
            },
          },
        },
    }
  },

  {
    "github/copilot.vim",
    lazy = false,
  }
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

}
