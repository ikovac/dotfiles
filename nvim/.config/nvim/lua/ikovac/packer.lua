return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Plugins used by other plugins such as telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  -- Nord-vim theme
  use 'shaunsingh/nord.nvim'
  -- Comments
  use 'numToStr/Comment.nvim'
  -- File tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  -- Fuzzy finder
  use 'ibhagwan/fzf-lua'
  -- Show git diff in sign column
  use 'lewis6991/gitsigns.nvim'
  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  -- LSP and syntax highlighting
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use('nvim-treesitter/nvim-treesitter', {
    run = ':TSUpdate'
  })
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Status line
  use('nvim-lualine/lualine.nvim', { opt = true })
end)
