-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


vim.o.guifont = "JetBrainsMono Nerd Font:h13"
vim.cmd [[
    :command -nargs=0 Q :qall
    " nnoremap <esc>[1;3B ddP
    " nnoremap <C-S-Down> ddp
    ]]
-- 不记录历史改动
vim.opt.undofile = false
