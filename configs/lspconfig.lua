local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "jsonls", "pylsp", "neocmake" }

for _, lsp in ipairs(servers) do
  user_capabilities = capabilities
  if lsp == "clangd" then
    -- multiple different client offset_encodings detected for buffer, this is not suppor ted yet
    -- https://www.reddit.com/r/neovim/comments/tul8pb/lsp_clangd_warning_multiple_different_client/
    user_capabilities.offsetEncoding = "utf-8"
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = user_capabilities,
      cmd = {
        "clangd",
        "--background-index",
        "--suggest-missing-includes",
        "--enable-config",
        "--fallback-style=google",
      },
    }
    goto continue
  end
  if lsp == "pylsp" then
    lspconfig[lsp].setup {
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = { enabled = false, ignore = { "E501" } , maxLineLength = 120 },
            pyflakes = { enabled = false },
            pylint = { enabled = false , ignore = { "E501" }},
            yapf = { enabled = false },
            flake8 = { enabled = true , ignore = { "E501" }},
            jedi_completion = { enabled = true },
            jedi_definition = { enabled = true },
            jedi_hover = { enabled = true },
            jedi_references = { enabled = true },
            jedi_signature_help = { enabled = true },
            jedi_symbols = { enabled = true },
            mccabe = { enabled = false },
            mypy = { enabled = false },
            pep8 = { enabled = false },
            pydocstyle = { enabled = false },
            rope_completion = { enabled = true },
            rope_definition = { enabled = true },
            rope_hover = { enabled = true },
            rope_references = { enabled = true },
            rope_rename = { enabled = true },
          },
        },
      },
    }
    goto continue
  end

  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = user_capabilities,
  }
  ::continue::
end


--
-- lspconfig.pyright.setup { blabla}


-- local keybinds = require('lsp_config.keybinds')

-- require('lspconfig').clangd.setup {
--         on_attach = keybinds.on_attach,
--         cmd = {
--             "clangd",
--             "--background-index",
--             "--suggest-missing-includes",
--             '--query-driver="/usr/local/opt/gcc-arm-none-eabi-8-2019-q3-update/bin/arm-none-eabi-gcc"'
--         },
--         filetypes = {"c", "cpp", "objc", "objcpp"},
-- }

-- rust-analyzer
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true,
      },
    },
  },
}

