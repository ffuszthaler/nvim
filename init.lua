require('plugins')
require('keymappings')
require('settings')

-- plugin config
require('compe-config') -- auto completion
require('treesitter-config') -- syntax highlighting
require('statusline') -- galaxyline
require('gitsigns-config') -- git symbols
require('nvimtree-config') -- file tree
require('telescope-config') -- telescope settings
require('kommentary-config') -- commenting
require('bufferline-config') -- tabline
require('fterm-config') -- popup terminal
require('colorizer-config') -- show colors
require('numb-config') -- peak lines
require('colorscheme-config') -- colorscheme settings

-- lsp config
require('lsp-config')
require('lsp.js-ts-ls')
require('lsp.cpp-ls')
require('lsp.diagnostic-ls')
