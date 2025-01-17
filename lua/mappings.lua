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

-- neovide 实现ctrl+shift+v 和 ctrl+shift+c 和 shift+insert

if vim.g.neovide then
	-- map('v', '<C-S-c>', '"+y', { noremap = true, silent = true })
	map('v', '<C-S-v>', '"+p', { noremap = true, silent = true })
	map("v", "<sc-c>", '"+y', { noremap = true }) -- Select line(s) in visual mode and copy (CTRL+Shift+V)

	map("n", "<sc-v>", '"+p', { noremap = true }) -- Paste in normal mode (CTRL+Shift+C)

	map('i', '<S-Insert>', '<C-R>+', { noremap = true, silent = true })
	map("i", "<sc-v>", '<ESC>"+p', { noremap = true }) -- Paste in insert mode (CTRL+Shift+C)

	-- map('c', '<sc-v>', '<C-R>+', { noremap = true, silent = true }) -- 在命令模式下粘贴
	map("c", "<sc-v>", "<C-R>+", { noremap = true }) -- 系统剪切板
end


-- macos
if vim.fn.has("mac") then
	if vim.g.neovide then
		vim.keymap.set('n', '<D-s>', ':w<CR>')      -- Save
		vim.keymap.set('v', '<D-c>', '"+y')         -- Copy
		vim.keymap.set('n', '<D-v>', '"+P')         -- Paste normal mode
		vim.keymap.set('v', '<D-v>', '"+P')         -- Paste visual mode
		vim.keymap.set('c', '<D-v>', '<C-R>+')      -- Paste command mode
		vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
	end

	-- Allow clipboard copy paste in neovim
	vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
end
