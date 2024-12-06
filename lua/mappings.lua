require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- vim.cmd [[
--     :command -nargs=0 Q :qall
--     " nnoremap <esc>[1;3B ddP
--     " nnoremap <C-S-Down> ddp
--     ]]

-- 创建自定义命令 :Q  Quit all
vim.api.nvim_create_user_command('Q', 'qall', {
	nargs = 0,
	desc = 'Quit all',
})

-- map("n", "<esc>[1;3B", "ddP", { desc = "Move line down" })
-- map("n", "<C-S-Down>", "ddp", { desc = "Move line down" })