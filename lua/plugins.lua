return require('packer').startup(function()
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Miscellaneous
  use 'mhinz/vim-signify'
  use 'mg979/vim-visual-multi'
  use 'tpope/vim-fugitive'
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'

  -- file managment
  use 'kyazdani42/nvim-tree.lua'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- auto completion
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use 'sirver/ultisnips'
  use 'honza/vim-snippets'
  use 'mattn/emmet-vim'
  use 'preservim/nerdcommenter'

  -- colorscheme
  use 'ray-x/aurora'

  -- statusline
  use 'kyazdani42/nvim-web-devicons'
  use {'glepnir/galaxyline.nvim', branch = 'main'}
  use 'romgrk/barbar.nvim'
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
end)
