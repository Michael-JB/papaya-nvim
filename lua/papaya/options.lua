-- disable netrw as we're using neo-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- use 2 spaces instead of tabs
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- share clipboard with system
vim.opt.clipboard = "unnamedplus"

-- always show line numbering
vim.opt.number = true

-- don't wrap lines
vim.opt.wrap = false
