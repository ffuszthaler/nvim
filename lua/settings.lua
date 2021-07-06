vim.cmd "syntax on"
vim.cmd "filetype plugin indent on"
vim.o.number = true -- set numbered lines
-- vim.o.relativenumber = true -- set relative number
vim.o.clipboard = "unnamed,unnamedplus" -- Copy paste between vim and everything else
vim.cmd "set expandtab"
vim.cmd "set ts=2"
vim.cmd "set sw=2"
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
--vim.o.t_Co = "256" -- Support 256 colors
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.cmd "set colorcolumn=80"
vim.o.cursorline = true -- Enable highlighting of the current line
vim.o.updatetime = 100 -- faster completion
vim.o.signcolumn = "yes"
vim.o.scrolloff = 10
