return {
    ["luochen1990/rainbow"] = {},
    ["terryma/vim-expand-region"] = {},
    ["williamboman/nvim-lsp-installer"] = {},
--      ['glacambre/firenvim'] = {
--          run = function()
-- --             vim.fn['firenvim#install'](0)
--              vim.fn['firenvim#uninstall'](0)
--          end
--      },
    ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
    },
    ['folke/which-key.nvim'] = { disable = false  },
    ["potamides/pantran.nvim"]={},
    -- format
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
           require "custom.plugins.null-ls"
        end,
   }
    

}

--local opts = {noremap = true, silent = true}
--vim.keymap.set("n", "<leader>tr", pantran.motion_translate, opts)
--vim.keymap.set("n", "<leader>trr", function() return pantran.motion_translate() .. "_" end, opts)
--vim.keymap.set("x", "<leader>tr", pantran.motion_translate, opts)
