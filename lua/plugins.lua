return require('packer').startup(function()
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Miscellaneous
  use {'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }
  use 'mg979/vim-visual-multi'
  use 'tpope/vim-fugitive'

  -- auto completion
  use 'hrsh7th/nvim-compe'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'sirver/ultisnips'
  use 'honza/vim-snippets'
  use 'mattn/emmet-vim'
  use 'b3nj5m1n/kommentary'
  
  -- file managment
  use 'kyazdani42/nvim-tree.lua'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

  -- colorscheme
  use 'ray-x/aurora'

  -- statusline
  use 'kyazdani42/nvim-web-devicons'
  use {'glepnir/galaxyline.nvim', branch = 'main'}
  use 'romgrk/barbar.nvim'
end)
