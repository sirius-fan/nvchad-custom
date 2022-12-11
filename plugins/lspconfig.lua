-- require("mason").setup()
-- require("mason-lspconfig").setup()
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {"clangd", "jsonls", "pylsp", "rust_analyzer"}

for _, lsp in ipairs(servers) do
    user_capabilities = capabilities
    if (lsp == "clangd") then
        -- multiple different client offset_encodings detected for buffer, this is not suppor ted yet
        -- https://www.reddit.com/r/neovim/comments/tul8pb/lsp_clangd_warning_multiple_different_client/
        user_capabilities.offsetEncoding = "utf-8"
        lspconfig[lsp].setup({
            on_attach = on_attach,
            capabilities = user_capabilities,
            cmd = {
                "clangd", 
                "--background-index",
                "--suggest-missing-includes",
                "--enable-config",
                "--fallback-style=google",
                
            }

        })
        goto continue
    end

    lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = user_capabilities

    })
    ::continue::
end

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
