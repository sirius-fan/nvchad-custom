local M = {}

M.treesitter = {
  ensure_installed = {"vim", "cpp", "json", "markdown", "c", "bash", "lua", "python"},
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    -- custom
    "clangd",
    "json-lsp",

  },
}

-- git support in nvimtree
M.nvimtree = {
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

return M
