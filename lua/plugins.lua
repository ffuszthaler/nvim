local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- packer can manage itself
  use "wbthomason/packer.nvim"

  -- required by many other plugins
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  -- lsp & auto completion
  use { "onsails/lspkind-nvim", event = "BufEnter" }
  use { "hrsh7th/nvim-cmp", after = "lspkind-nvim", config = "require('cmp-config')" }
  use { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" }
  use { "neovim/nvim-lspconfig", after = "cmp-nvim-lsp", config = "require('lsp-config')" }
  use { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" }
  use { "hrsh7th/cmp-path", after = "nvim-cmp" }
  use { "hrsh7th/cmp-buffer", after = "nvim-cmp" }
  use { "saadparwaiz1/cmp_luasnip", after = { 'nvim-cmp', 'LuaSnip' }}

  -- lsp utilities
  use "williamboman/nvim-lsp-installer"
  use "ray-x/lsp_signature.nvim"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- colorscheme
  use "overcache/NeoSolarized"

  -- treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = "require('treesitter-config')", event = "BufWinEnter" }

  -- better commenting
  use { "b3nj5m1n/kommentary", config = "require ('kommentary-config')", event = "VimEnter" }

  -- file management
  use { "kyazdani42/nvim-tree.lua", config = "require('nvim-tree-config')", event = "BufWinEnter" }
  use { "nvim-telescope/telescope.nvim", config = "require('telescope-config')", event = "BufWinEnter" }

  -- ui improvements
  use "kyazdani42/nvim-web-devicons"
  use { "lukas-reineke/indent-blankline.nvim", event = "BufRead" }
  use { "glepnir/galaxyline.nvim", config = "require('statusline-config')", event = "BufEnter" }
  use { "akinsho/nvim-bufferline.lua", config = "require('bufferline-config')", event = "BufWinEnter" }

  -- random features
  use { "windwp/nvim-autopairs", config = "require('nvim-autopairs').setup{}", event = "BufWinEnter" }
  use { "lewis6991/gitsigns.nvim", config = "require('gitsigns-config')", event = "BufRead" }
  use { "mg979/vim-visual-multi", event = "BufRead" }
  use "tpope/vim-fugitive"
  use "tweekmonster/startuptime.vim"
  use { "akinsho/nvim-toggleterm.lua", config = "require('terminal-config')", event = "BufRead" }
  use { "norcalli/nvim-colorizer.lua", config = "require('colorizer').setup()", event = "BufRead" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
