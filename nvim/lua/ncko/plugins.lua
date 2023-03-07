local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lsp_servers = {
  tsserver = {},
  jsonls = {},
  cssls = {},
  html = {},
  lua_ls = {},
}

local null_servers = {
  'prettierd'
}

require('lazy').setup({
  'kyazdani42/nvim-web-devicons',
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {}
    end
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('bufferline').setup {}
    end
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },
  },
  'github/copilot.vim',
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig',
      'neovim/nvim-lspconfig',
      'jose-elias-alvarez/null-ls.nvim',
      'jay-babu/mason-null-ls.nvim',
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = lsp_servers,
        automatic_installation = true,
      })
      require('mason-null-ls').setup({
        ensure_installed = null_servers,
        automatic_installation = true,
        automatic_setup = true,
      })
      require('null-ls').setup();
      require('mason-null-ls').setup_handlers()
      for lsp, settings in pairs(lsp_servers) do
        require('lspconfig')[lsp].setup(settings)
      end
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        -- ensure_installed = { "typescript", "lua", "json", "html", "css" },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
        },
        textobjects = {
          select = {
            enable = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
        },
      }
    end
  },
  {
    'glepnir/lspsaga.nvim',
    event = 'BufRead',
    config = function()
      require('lspsaga').setup({
      })
    end,
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
    },
    config = function()
      require('telescope').setup {
        extensions = {
          theme = 'dropdown',
          file_browser = {
            hijack_netrw = true,
          }
        }
      }
      require('telescope').load_extension('file_browser')
    end
  }
})
