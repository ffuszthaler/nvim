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

-- telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', {silent = true })

-- fugitive
vim.api.nvim_set_keymap('n', '<Leader>gs', ':Git<CR>', {silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gd', ':Gdiffsplit<CR>', {silent = true })

-- goyo
vim.api.nvim_set_keymap('n', '<Leader>x', ':Goyo<CR>', {silent = true })

-- limelight
vim.api.nvim_set_keymap('n', '<Leader>y', ':Limelight!!<CR>', {silent = true })

-- nvim-lspconfig
vim.cmd("nnoremap <silent> <Leader>dd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> <Leader>dr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> <Leader>di <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent> <Leader>dl <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>")

-- lspsaga.nvim
vim.cmd("nnoremap <silent> <Leader>q :Lspsaga show_line_diagnostics<CR>")
vim.cmd("nnoremap <silent> <Leader>e :Lspsaga code_action<CR>")
vim.cmd("nnoremap <silent> <Leader>t :Lspsaga diagnostic_jump_next<CR>")
vim.cmd("nnoremap <silent> <Leader>z :Lspsaga diagnostic_jump_prev<CR>")
