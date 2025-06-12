return require('packer').startup(function()
	----------------------------------------------------------------------
	-- Packer (Plugin Manager)
	----------------------------------------------------------------------
	use 'wbthomason/packer.nvim'

	----------------------------------------------------------------------
	-- Theming and UI
	----------------------------------------------------------------------
	use 'shortcuts/no-neck-pain.nvim'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'                 -- Icons for nvim-tree
	}
	use 'ribru17/bamboo.nvim'                                   -- Bamboo theme
	use 'folke/zen-mode.nvim'                                   -- Zen mode for distraction-free coding
	use { 'hoob3rt/lualine.nvim',                               -- Statusline
		requires = { 'kyazdani42/nvim-web-devicons', opt = true } } -- Icons for lualine
	use { 'romgrk/barbar.nvim',                                 -- Bufferline
		requires = 'nvim-web-devicons' }                          -- Icons for barbar
	use 'nvim-lua/popup.nvim'                                   -- For plugin popups
	-- Color Schemes
	use 'morhetz/gruvbox'
	use 'sainnhe/gruvbox-material'
	use 'folke/tokyonight.nvim'
	use 'shaunsingh/nord.nvim'
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'sainnhe/everforest'
	use { 'embark-theme/vim', as = 'embark' }
	use "VDuchauffour/neodark.nvim"
	-- use 'tribela/vim-transparent' -- Transparency (commented out)
	use { 'luisiacc/gruvbox-baby', branch = 'main' }
	use "EdenEast/nightfox.nvim"

	----------------------------------------------------------------------
	-- Navigation and File Management
	----------------------------------------------------------------------
	use 'easymotion/vim-easymotion'     -- Easy motion for quick jumps
	use 'christoomey/vim-tmux-navigator' -- Seamless tmux and Neovim navigation
	use {
		'nvim-telescope/telescope.nvim',  -- Fuzzy finder
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'nvim-telescope/telescope-media-files.nvim' -- Telescope extension for media files
	use 'echasnovski/mini.nvim'                    -- Minimal and fast navigation

	----------------------------------------------------------------------
	-- Code Intelligence and Development Tools
	----------------------------------------------------------------------
	-- LSP (Language Server Protocol)
	use "neovim/nvim-lspconfig"            -- Core LSP configuration
	use "williamboman/mason.nvim"          -- Manage LSP servers
	use "williamboman/mason-lspconfig.nvim" -- Bridge Mason and nvim-lspconfig
	use { "nvimtools/none-ls.nvim", requires = { { "nvimtools/none-ls-extras.nvim" } } }
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim", -- Visual separation of LSP diagnostics
		config = function()
			require("lsp_lines").setup()
		end,
	})


	-- Completion
	use 'hrsh7th/nvim-cmp'        -- Completion engine
	use 'hrsh7th/cmp-nvim-lsp'    -- LSP completion source
	use 'hrsh7th/cmp-buffer'      -- Buffer completion source
	use 'hrsh7th/cmp-path'        -- Path completion source
	use 'hrsh7th/cmp-cmdline'     -- Command line completion source
	use 'saadparwaiz1/cmp_luasnip' -- Snippet completion source

	-- Snippets
	use "L3MON4D3/LuaSnip"            -- Snippet engine
	use "rafamadriz/friendly-snippets" -- Collection of snippets

	-- Diagnostics and Code Quality
	use {
		"folke/trouble.nvim", -- Display diagnostics in a nice way
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}

	-- Code Formatting and Manipulation
	use 'mattn/emmet-vim'          -- Emmet for HTML/CSS
	use 'terrortylor/nvim-comment' -- Commenting motions
	use 'MunifTanjim/prettier.nvim' -- Prettier integration
	--use 'valloric/matchtagalways'  -- Match tags in HTML/XML
	use 'sbdchd/neoformat'

	-- Treesitter (Syntax Highlighting and Code Navigation)
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Core treesitter
	use 'virchau13/tree-sitter-astro'                           -- Treesitter parser for Astro
	use 'tree-sitter/tree-sitter-html'                          -- Treesitter parser for HTML

	-- Debugging
	use 'mfussenegger/nvim-dap' -- Debug Adapter Protocol client

	-- AI Assistance
	use 'github/copilot.vim' -- GitHub Copilot
	use {
		"CopilotC-Nvim/CopilotChat.nvim",
		requires = {
			"github/copilot.vim", -- or "zbirenbaum/copilot.lua"
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken", -- Only needed on macOS or Linux
		config = function()    -- Use 'config' instead of 'opts'
			-- Configuration options for CopilotChat.nvim go here
			-- Example:
			-- require("copilot_chat").setup {
			--   -- your options here
			-- }
		end,
		-- Lazy loading (optional):
		-- cmd = { "CopilotChat", ... },  -- Replace ... with the actual commands
	}


	use 'OmniSharp/omnisharp-vim' -- C# development (OmniSharp)
end)
