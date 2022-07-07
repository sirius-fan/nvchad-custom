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

--local opts = {noremap = true, silent = true}
--vim.keymap.set("n", "<leader>tr", pantran.motion_translate, opts)
--vim.keymap.set("n", "<leader>trr", function() return pantran.motion_translate() .. "_" end, opts)
--vim.keymap.set("x", "<leader>tr", pantran.motion_translate, opts)
