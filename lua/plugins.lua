return require('packer').startup(function()
  
  ------------------ Packer ---------------------------
  use 'wbthomason/packer.nvim'

  ------------------ Theming ---------------------------
  use {
	  'kyazdani42/nvim-tree.lua',
	  requires = 'kyazdani42/nvim-web-devicons'
  }

  use 'morhetz/gruvbox'
  use 'folke/tokyonight.nvim'

  use {
	'hoob3rt/lualine.nvim',
	requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  ------------------ Navigation -----------------------

  use 'easymotion/vim-easymotion'
  use 'christoomey/vim-tmux-navigator'
  use 'nvim-telescope/telescope-media-files.nvim'

  use {
	'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  ------------------ Intelligence ---------------------

  -- cmp plugins
  use {
   'hrsh7th/nvim-cmp',
   requires = {
     'hrsh7th/vim-vsnip',
     'hrsh7th/cmp-buffer',
   }
  }
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-luasnip'
  use 'hrsh7th/cmp-nvim-lsp'

  -- Copilot
  use 'github/copilot.vim'

  use {
	"folke/trouble.nvim",
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
	  require("trouble").setup {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	  }
	end
  }

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  use {
	"dense-analysis/ale"
  }

  use 'mattn/emmet-vim'
  
  use {
	'prettier/vim-prettier',
    run = 'yarn install',
    ft = {
	  'javascript',
	  'typescript', 
	  'css', 
	  'less', 
	  'scss', 
	  'graphql', 
	  'markdown', 
	  'vue', 
	  'html'
	}
  }

  use 'valloric/matchtagalways'

  use 'nvim-lua/popup.nvim'

  --- use 'windwp/nvim-autopairs'

  use 'terrortylor/nvim-comment'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'OmniSharp/omnisharp-vim'
end)
