vim.o.guifont = "JetBrainsMono Nerd Font:h13"
vim.cmd [[
    :command -nargs=0 Q :qall
    ]]
    -- set guifont=思源宋体
    
-- 不记录历史改动
vim.opt.undofile = false

-- for nvui
if vim.g.nvui then
    -- Configure through vim commands
    vim.cmd [[
    NvuiCmdFontFamily DroidSansMono Nerd Font Mono
    set guifont=DroidSansMono\ Nerd\ Font\ Mono:h12
    :NvuiToggleFrameless
    :NvuiTitlebarColors #abb2bb #252931
    :NvuiTitlebarFontFamily Consolas
]]
    -- :NvuiTitlebarColors #abb2bb #1e222a
    -- vim.cmd('guifont DroidSansMono Nerd Font Mono')
    -- guifont=Consolas:h12,JetbrainsMono\ NF
end
