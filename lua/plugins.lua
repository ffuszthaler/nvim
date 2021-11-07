-- bootstrapping
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system { "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path }
  execute "packadd packer.nvim"
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
  return
end

packer.init {
  -- package_root = require("packer.util").join_paths(vim.fn.stdpath "data", "lvim", "pack"),
  git = { clone_timeout = 300 },
  display = {
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
  },
}

-- after changing plugin config run :PackerCompile
return require("packer").startup(function(use)
  -- packer can manage itself
  use "wbthomason/packer.nvim"

  -- required  by other plugins
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  -- auto completion & formatting
  use {
    "hrsh7th/nvim-cmp",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lua",
  }

  -- snippets
  use "L3MON4D3/luasnip"
  use "rafamadriz/friendly-snippets"

  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"
  use "ray-x/lsp_signature.nvim"
  use {
    "b3nj5m1n/kommentary",
    config = function()
      require "kommentary-config"
    end,
    event = "BufRead",
  }
  use {
    "mhartington/formatter.nvim",
    config = function()
      require "formatter-config"
    end,
    event = "BufRead",
  }

  -- file managment
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require "treesitter-config"
    end,
    event = "BufRead",
  }
  use "kyazdani42/nvim-tree.lua"
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "telescope-config"
    end,
    event = "BufWinEnter",
  }

  -- ui
  use "kyazdani42/nvim-web-devicons"
  use { "lukas-reineke/indent-blankline.nvim", event = "BufRead" }
  use {
    "glepnir/galaxyline.nvim",
    config = function()
      require "statusline-config"
    end,
    event = "BufWinEnter",
  }
  use {
    "akinsho/nvim-bufferline.lua",
    config = function()
      require "bufferline-config"
    end,
    event = "BufWinEnter",
  }

  -- colorschemes
  use "ray-x/aurora"
  use "folke/tokyonight.nvim"

  -- random
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "gitsigns-config"
    end,
    event = "BufRead",
  }
  use { "mg979/vim-visual-multi", event = "BufRead" }
  use "tpope/vim-fugitive"
  use "tweekmonster/startuptime.vim"
  use {
    "akinsho/nvim-toggleterm.lua",
    config = function()
      require "terminal-config"
    end,
    event = "BufWinEnter",
  }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  }
end)
