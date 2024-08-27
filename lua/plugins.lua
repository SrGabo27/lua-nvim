return require('packer').startup(function()
  
  ------------------ Packer ---------------------------
  use 'wbthomason/packer.nvim'

  ------------------ Theming ---------------------------
  use {
	  'kyazdani42/nvim-tree.lua',
	  requires = 'kyazdani42/nvim-web-devicons'
  }

	-- Transparency
	-- use 'tribela/vim-transparent'

  use 'morhetz/gruvbox'
  use 'folke/tokyonight.nvim'

  use {
	'hoob3rt/lualine.nvim',
	requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
	'shaunsingh/nord.nvim'
  }

  use {'sainnhe/everforest'}

  use { 'embark-theme/vim', as = 'embark' }

  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

	use "VDuchauffour/neodark.nvim"

  ------------------ Navigation -----------------------

  use 'easymotion/vim-easymotion'
  use 'christoomey/vim-tmux-navigator'
  use 'nvim-telescope/telescope-media-files.nvim'

  use {
	'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

	use 'echasnovski/mini.nvim'
  ------------------ Intelligence ---------------------

  -- Copilot
  use 'github/copilot.vim'
	use 'gptlang/CopilotChat.nvim'

	-- Dap
	use 'mfussenegger/nvim-dap'

	-- Cmp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'

  use {
	"folke/trouble.nvim",
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
	  require("trouble").setup {
	  }
	end
  }

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use



  -- LSP
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "williamboman/mason.nvim" -- for building LSPs
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason-lspconfig.nvim"

  use 'mattn/emmet-vim'
  
  use 'valloric/matchtagalways'

  use 'nvim-lua/popup.nvim'

  use 'terrortylor/nvim-comment'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'virchau13/tree-sitter-astro'
	use 'tree-sitter/tree-sitter-html'

  use 'OmniSharp/omnisharp-vim'
end)
