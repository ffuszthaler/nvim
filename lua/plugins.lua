-- bootstrapping
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system { "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path }
  execute "packadd packer.nvim"
end

-- after changing plugin config run :PackerCompile
return require("packer").startup(function()
  -- packer can manage itself
  use "wbthomason/packer.nvim"

  -- auto completion & formatting
  use "hrsh7th/nvim-compe"
  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"
  use "b3nj5m1n/kommentary"
  use {
    "sbdchd/neoformat",
    config = function()
      vim.g.neoformat_run_all_formatters = true
    end,
  }

  -- snippet support
  use "hrsh7th/vim-vsnip"
  use "rafamadriz/friendly-snippets"

  -- file managment
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "kyazdani42/nvim-tree.lua"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
  }

  -- colorscheme
  use "ray-x/aurora"
  use "folke/tokyonight.nvim"

  -- statusline
  use "kyazdani42/nvim-web-devicons"
  use { "glepnir/galaxyline.nvim", branch = "main" }
  use "akinsho/nvim-bufferline.lua"

  -- random
  use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }
  use "mg979/vim-visual-multi"
  use "tpope/vim-fugitive"
  use "lukas-reineke/indent-blankline.nvim"
  use "tweekmonster/startuptime.vim"
  use "numToStr/FTerm.nvim"
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  }
end)
