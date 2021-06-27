require('plugins')
require('keymappings')
require('settings')

-- plugin config
require('compe-config') -- auto completion
require('lspsaga-config') -- lsp user interface
require('treesitter-config') -- syntax highlighting
require('statusline') -- galaxyline
require('gitsigns-config') -- git symbols
require('nvimtree-config') -- file tree
require('kommentary-config') -- commenting
require('bufferline-config') -- tabline
require('FTerm-config') -- popup terminal

-- lsp config
require('lsp-config')
require('lsp.js-ts-ls')
require('lsp.cpp-ls')
