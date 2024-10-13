vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- window navigation
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- window resizing
vim.keymap.set('n', '<C-Up>', ':resize -2<Cr>')
vim.keymap.set('n', '<C-Down>', ':resize +2<Cr>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<Cr>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- retain selection when indenting in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- write
vim.keymap.set('n', '<leader>w', ':w <CR>')

-- quit
vim.keymap.set('n', '<leader>q', ':q <CR>')

-- relative line numbering
vim.opt.relativenumber = true
