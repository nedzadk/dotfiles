require('lazy').setup {
  -- LSP install / configuration
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      require('plugins.lsp')
    end,
  },
  -- Trouble install / configuration
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('plugins.trouble')
    end,
  },
  -- Github Copilot install / configuration
  'github/copilot.vim',
  -- Lualine install / configuration
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('plugins.lualine')
    end,
  },
  -- Bufferline install / configuration
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('plugins.bufferline')
    end,
  },
  -- Telescope install / configuration
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function()
      require('plugins.telescope')
    end,
  },
  -- Treesitter install  / configuration
  {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate',
    config = function()
      require('plugins.treesitter')
    end,
  },
  -- LSP Saga
  {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  },
  -- Theme install / configuration
  {
    'sainnhe/everforest',
    config = function()
      vim.g.everforest_background = 'hard'
      vim.cmd.colorscheme 'everforest'
    end,
  }
}
