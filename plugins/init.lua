return {
    ["luochen1990/rainbow"] = {},
    ["terryma/vim-expand-region"] = {},
    ["williamboman/nvim-lsp-installer"] = {},
    ['glacambre/firenvim'] = {
        run = function()
            vim.fn['firenvim#install'](0)
        end
    },
    ["potamides/pantran.nvim"]={}

}
