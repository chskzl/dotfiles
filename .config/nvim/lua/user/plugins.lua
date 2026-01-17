require("lazy").setup({
  {
    "sainnhe/everforest",
    lazy = false,
    config = function()
	  vim.cmd([[colorscheme everforest]])
	end
  },
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
  "nvim-telescope/telescope.nvim",
  "windwp/nvim-autopairs",
  {
    "folke/which-key.nvim",
    opts = {}
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  },
  "kyazdani42/nvim-web-devicons",
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()
    end
  },

  "rcarriga/nvim-notify",

  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
  "hrsh7th/cmp-nvim-lsp",

  {
    "nvim-treesitter/nvim-treesitter",
    cmd = "TSUpdate"
  },
  {
    "brenton-leighton/multiple-cursors.nvim",
    opts = {}
  },
})

