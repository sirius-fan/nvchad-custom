local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

    -- lspservers with default config
    local servers = {"clangd", "gopls", "pylsp", "rust_analyzer"}

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = function(client, bufnr)
                attach(client, bufnr)
                -- change gopls server capabilities
                --       if lsp == "gopls" then
                client.resolved_capabilities.document_formatting = true
                client.resolved_capabilities.document_range_formatting = true
                --       end
            end,
            capabilities = capabilities
        }
    end
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

return M
