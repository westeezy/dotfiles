-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'lewis6991/impatient.nvim' -- Performance booster
  use("nathom/filetype.nvim") -- Faster FileType
  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
  use 'Mofiqul/dracula.nvim' -- Theme
  use 'nvim-treesitter/nvim-treesitter' -- all sorts of code parsing magic
  use 'nvim-treesitter/nvim-treesitter-textobjects' -- additional text objects for above
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'

  -- show indents on blank lines
  use({
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('plugins.indent')
    end
  })

  -- Startup Screen
  use({
      'glepnir/dashboard-nvim',
      config = function()
        require('plugins.dashboard')
      end
  })

  -- Trouble Diagnostics
  use({
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('plugins.trouble')
    end
  })

  -- Autosave
  use({
    "Pocco81/AutoSave.nvim",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function() require('plugins.autosave') end, 1500)
    end
  })

  -- Toast Notifications
  use({
    "rcarriga/nvim-notify",
    event = "BufEnter",
    config = function()
      vim.defer_fn(function() require('plugins.notify') end, 2000)
    end
  })

  -- Comments
  use({
    'numToStr/Comment.nvim',
    config = function()
      require('plugins.comment')
    end
  })

  -- Status Line
  use({
      'nvim-lualine/lualine.nvim',
      config= function()
        require('plugins.lualine')
      end
  })

  -- Telescope
  use({
    'nvim-telescope/telescope.nvim',
    requires = {{ 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }},
    config = function ()
      require('plugins.telescope')
    end
  })

  -- smooth scrolling
  use({
    "karb94/neoscroll.nvim",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function() require('plugins.neoscroll') end, 2000)
    end
  })

  -- Directory Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function()
      require('plugins.nvim-tree')
    end
  }

  -- Session Management
  use({
    'rmagatti/auto-session',
    config = function()
      require('plugins.auto-session')
    end
  })

  -- Comment Highlighting
  use({
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('plugins.todo-comments')
    end
  })

  -- Floating Terminal
  use({
    'voldikss/vim-floaterm',
    config = function()
      require('plugins.floaterm')
    end
  })

  -- Key Map Suggestions
  use({
    'folke/which-key.nvim',
    event = "VimEnter",
    config = function()
      require('plugins.whichkey')
    end
  })

end)

require('editor')
require('mappings')
require('theme')

