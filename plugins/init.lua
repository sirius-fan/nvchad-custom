local overrides = require "custom.plugins.overrides"

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
    -- after="mason-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },
  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
  -- ["williamboman/mason-lspconfig.nvim"] = {
  --   after="mason",
  -- },
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["voldikss/vim-translator"] = {},
  -- format
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
}
