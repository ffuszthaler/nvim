-- leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>a', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { silent = true })

-- telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', { silent = true })

-- fugitive
vim.api.nvim_set_keymap('n', '<Leader>gs', ':Git<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gd', ':Gdiffsplit<CR>', { silent = true })

-- nvim-lspconfig
vim.api.nvim_set_keymap('n', '<Leader>dd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>di', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dl', '<cmd>lua vim.lsp.diagnostic.set_loclist()', { noremap = true, silent = true })

-- lspsaga.nvim
vim.api.nvim_set_keymap('n', '<Leader>q', ':Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>e', ':Lspsaga code_action<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>t', ':Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>z', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true })

-- bufferline: open and close tabs
vim.api.nvim_set_keymap("n", "<S-t>", [[<Cmd>tabnew<CR>]], { silent = true })
vim.api.nvim_set_keymap("n", "<S-x>", [[<Cmd>bdelete<CR>]], { silent = true })

-- bufferline: move between tabs
vim.api.nvim_set_keymap("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], { silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], { silent = true })

-- kommentary
vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", {})
--vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "<leader>cc", "<Plug>kommentary_visual_default", {})

-- FTerm
vim.api.nvim_set_keymap('n', '<Leader>y', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Leader>y', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
