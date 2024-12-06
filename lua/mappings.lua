require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
vim.cmd [[
    :command -nargs=0 Q :qall
    " nnoremap <esc>[1;3B ddP
    " nnoremap <C-S-Down> ddp
    ]]
