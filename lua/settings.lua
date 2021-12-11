vim.o.syntax = "on" -- enable syntax highlighting
vim.cmd "filetype plugin indent on" -- enables filetype specific settings
vim.o.number = true -- set numbered lines
-- vim.o.relativenumber = true -- set relative number
vim.o.clipboard = "unnamed,unnamedplus" -- copy paste between vim and everything else
vim.o.expandtab = true -- use spaces, not tabs
vim.o.tabstop = 2 -- number of spaces a "tab" counts for
vim.o.shiftwidth = 2 -- number of spaces used for auto indenting
vim.o.fileencoding = "utf-8" -- the encoding written to file
vim.o.splitbelow = true -- horizontal splits will automatically be below
vim.o.splitright = true -- vertical splits will automatically be to the right
-- vim.o.t_Co = "256" -- support 256 colors
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.colorcolumn = "80" -- adds a line at column 80
vim.o.cursorline = true -- enable highlighting of the current line
vim.o.updatetime = 100 -- faster completion
vim.o.signcolumn = "yes" -- always show signcolumn
vim.o.scrolloff = 10 -- add a 10 line scroll offset
vim.o.mouse = "a" -- enable mouse in neovim
vim.o.hidden = true -- required to keep and open multiple buffers
vim.cmd [[colorscheme NeoSolarized]]
