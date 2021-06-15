-- leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>a', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', {silent = true })
