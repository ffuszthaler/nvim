-- leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>a', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- symbol-outline
vim.api.nvim_set_keymap('n', '<Leader>s', ':SymbolsOutline<CR>', { noremap = true, silent = true })

-- nvim-lspconfig
vim.api.nvim_set_keymap('n', '<Leader>dd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>di', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>dl', ':lua vim.lsp.diagnostic.set_loclist()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>df', ':lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dx', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dn', ':lua vim.lsp.diagnostic.goto_next({popup_opts = {border}})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dp', ':lua vim.lsp.diagnostic.goto_prev({popup_opts = {border}})<CR>', { noremap = true, silent = true })

-- neoformat
vim.api.nvim_set_keymap('n', '<Leader>df', ':Neoformat<CR>', { noremap = true, silent = true })

-- telescope
vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':Telescope lsp_document_diagnostics<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>w', ':Telescope lsp_code_actions<CR>', { silent = true })

-- fugitive
vim.api.nvim_set_keymap('n', '<Leader>g', ':Gdiffsplit<CR>', { silent = true })

-- bufferline: open and close tabs
vim.api.nvim_set_keymap('n', '<S-t>', ':tabnew<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<S-x>', ':bdelete<CR>', { silent = true })

-- bufferline: move between tabs
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })

-- kommentary (the <C-c> exits visual-mode after uncommenting something)
vim.api.nvim_set_keymap('n', '<Leader>cc', '<Plug>kommentary_line_default', {})
vim.api.nvim_set_keymap('v', '<Leader>cc', '<Plug>kommentary_visual_default<C-c>', {})

-- FTerm
vim.api.nvim_set_keymap('n', '<Leader>y', ':lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Leader>y', '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })

-- trouble
vim.api.nvim_set_keymap('n', '<Leader>x', ':TroubleToggle<CR>', { noremap = true, silent = true })
