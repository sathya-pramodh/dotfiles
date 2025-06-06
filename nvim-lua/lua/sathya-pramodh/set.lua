vim.o.nu = true
vim.o.relativenumber = true

vim.o.list = true
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.o.breakindent = false
-- vim.o.smartindent = true

vim.o.wrap = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.cursorline = true
vim.o.termguicolors = true

vim.o.updatetime = 50

vim.g.mapleader = "\\"
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
