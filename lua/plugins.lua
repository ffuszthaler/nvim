-- bootstrapping
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- auto completion
  use 'hrsh7th/nvim-compe'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'mattn/emmet-vim'
  use 'b3nj5m1n/kommentary'

  -- snippet support
  use "hrsh7th/vim-vsnip"
  use "rafamadriz/friendly-snippets"

  -- file managment
  use 'kyazdani42/nvim-tree.lua'
  use {'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

  -- random
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use 'mg979/vim-visual-multi'
  use 'tpope/vim-fugitive'
  use 'glepnir/dashboard-nvim'
  use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
  use 'tweekmonster/startuptime.vim'

  -- colorscheme
  use 'ray-x/aurora'

  -- statusline
  use 'kyazdani42/nvim-web-devicons'
  use {'glepnir/galaxyline.nvim', branch = 'main'}
  use 'akinsho/nvim-bufferline.lua'
end)
