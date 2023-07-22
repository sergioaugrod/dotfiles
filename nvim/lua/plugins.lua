vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use 'jose-elias-alvarez/null-ls.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }

  -- Fuzzy Finder
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Theme
  use 'Mofiqul/vscode.nvim'

  -- Git
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use { 'lewis6991/gitsigns.nvim' }

  use 'mg979/vim-visual-multi';
  use 'nvim-lualine/lualine.nvim';
  use 'github/copilot.vim';
end)
