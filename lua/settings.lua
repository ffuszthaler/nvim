vim.cmd('syntax on') -- syntax highlighting
vim.cmd('colorscheme aurora') -- set colorscheme
vim.cmd('filetype plugin indent on') -- filetype detection
vim.o.number = true -- set numbered lines
vim.o.relativenumber = true -- set relative number
vim.o.clipboard = "unnamed,unnamedplus" -- Copy paste between vim and everything else
vim.cmd('set expandtab') -- Converts tabs to spaces
vim.cmd('set ts=2') -- Insert 2 spaces for a tab
vim.cmd('set sw=2') -- Change the number of space characters inserted for indentation
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
--vim.o.t_Co = "256" -- Support 256 colors
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.cmd('set colorcolumn=80') -- line at 80 characters
vim.o.cursorline = true -- Enable highlighting of the current line
vim.o.updatetime = 100 -- faster completion
vim.o.signcolumn = "yes"
vim.o.scrolloff = 10
