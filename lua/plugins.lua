-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }
  use {
    'nvim-tree/nvim-tree.lua',
    config = function() require 'extensions.nvim-tree' end,
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  use { 'projekt0n/github-nvim-theme' }
  use {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function() require 'extensions.coc' end,
  }
  use {
    'karb94/neoscroll.nvim',
    config = function() require 'extensions.neoscroll' end,
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require 'extensions.nvim-treesitter' end,
  }
  use {
    'petertriho/nvim-scrollbar',
    config = function() require 'extensions.nvim-scrollbar' end,
    requires = {
      'kevinhwang91/nvim-hlslens', 'lewis6991/gitsigns.nvim',
    },
  }
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require 'extensions.lualine' end,
    requires = { 'nvim-tree/nvim-web-devicons' },
  }
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x', -- or... tag = '0.1.1'
    config = function() require 'extensions.telescope' end,
    requires = {
      'nvim-tree/nvim-web-devicons', 'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    },
  }
  use {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require 'extensions.comment'
    end
  }
  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    requires = { 'nvim-treesitter/nvim-treesitter' }
  }
  use {
    "epwalsh/obsidian.nvim",
    tag = "*", -- recommended, use latest release instead of latest commit
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      require "extensions.obsidian"
    end,
  }
  use {
    'oflisback/obsidian-bridge.nvim',
    config = function()
      require "extensions.obsidian-bridge"
    end,
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
  }
  use "EdenEast/nightfox.nvim"
  use {
    "neanias/everforest-nvim",
    config = function()
      require "extensions.everforest"
    end
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require "extensions.indent-blankline"
    end

  }
  use {
    "NeogitOrg/neogit",
    requires = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require "extensions.neogit"
    end
  }
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "extensions.gitsigns"
    end
  }
  -- 存在するだけでcolortheme書き換えるのでかなりやばいです
  -- use {
  --   'rmehri01/onenord.nvim',
  --   config = function()
  --     require('onenord').setup()
  --   end
  -- }
end)
