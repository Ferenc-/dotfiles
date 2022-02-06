-- This is enabled by default anyway
vim.opt.syntax = "enable"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false

vim.opt.number = true
vim.opt.termguicolors = true


vim.cmd [[
  command! RemoveTrailingWhitespaces :%s/\s\+$
  command! SortSelectedLines :'<,'>sort /\ze\%V/
]]
