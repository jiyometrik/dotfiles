vim.cmd('packadd packer.nvim')
return require('packer').startup(function()
	-- package management
	use('wbthomason/packer.nvim')

	-- startup time
	use('dstein64/vim-startuptime')

	-- lsp
	use({
		'neovim/nvim-lspconfig',
		config = function()
			require('config.lsp')
		end,
	})

	-- graphical installer
	use('williamboman/nvim-lsp-installer')

	-- better ui
	use({
		'tami5/lspsaga.nvim',
		config = function()
			require('lspsaga').setup()
		end,
	})

	-- completion
	use({
		'hrsh7th/nvim-cmp',
		-- completion sources
		requires = {
			'hrsh7th/cmp-nvim-lsp', -- lsp completion
			'hrsh7th/cmp-buffer', -- buffer completion
			'hrsh7th/cmp-path', -- path completion (in ex-mode)
			'hrsh7th/cmp-cmdline', -- cmd completion (in ex-mode)
			'saadparwaiz1/cmp_luasnip', -- luasnip
		},
		config = function()
			require('config.completion')
		end,
	})

	-- hints as you type
	use('ray-x/lsp_signature.nvim')

	-- formatting & debugging
	use({
		'jose-elias-alvarez/null-ls.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('config.null-ls')
		end,
	})

	-- nice icons
	use('onsails/lspkind-nvim')

	-- location list and all that UI stuff that's not in Lspsaga
	use({
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup()
		end,
	})

	-- syntax highlighting
	use({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('config.treesitter')
		end,
	})

	-- bracket colorizer
	-- use("p00f/nvim-ts-rainbow")
	-- snippet engine
	use({
		'L3MON4D3/LuaSnip',
		config = function()
			require('config.snippet')
		end,
	})

	-- collection of snippets
	use('rafamadriz/friendly-snippets')

	-- ai completion
	-- use('github/copilot.vim')

	-- latex
	use({ 'lervag/vimtex', ft = { 'tex' } })

	-- git
	use('tpope/vim-fugitive')

	-- git diffs
	use({
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('config.gitsigns')
		end,
	})

	-- fuzzy finder
	use({
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-lua/popup.nvim',
		},
		config = function()
			require('config.telescope')
		end,
	})

	-- dashboard
	use('glepnir/dashboard-nvim')
	require('config.dashboard')

	-- explorer
	use({
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('config.explorer')
		end,
	})

	-- status line
	use({
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('config.statusline')
		end,
	})

	-- tab line
	use({
		'romgrk/barbar.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('config.tabline')
		end,
	})

	-- auto-complete bracket pairs
	use({
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end,
	})

	-- surrounding delimiters
	use('tpope/vim-surround')

	-- comment
	use({
		'numToStr/Comment.nvim',
		config = function()
			require('config.comments')
		end,
	})

	-- removes trailing whitespace
	use({
		'ntpeters/vim-better-whitespace',
		cmd = 'StripWhitespace',
		opt = true,
	})

	-- keymap cheatsheet
	use({
		'folke/which-key.nvim',
		config = function()
			require('which-key').setup()
		end,
	})

	-- indent guide
	use({
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('config.indent-guides')
		end,
	})

	-- zen mode - only code is shown on the screen
	use({
		'folke/zen-mode.nvim',
		cmd = 'ZenMode',
		requires = {
			'folke/twilight.nvim',
			cmd = 'ZenMode',
			config = function()
				require('twilight').setup()
			end,
		},
		config = function()
			require('zen-mode').setup()
		end,
	})

	-- themes
	use('Shatur/neovim-ayu')
	use({ 'catppuccin/nvim', as = 'catppuccin' })
	use('Mofiqul/dracula.nvim')
	use('sainnhe/edge')
	use('sainnhe/everforest')
	use({ 'ellisonleao/gruvbox.nvim', requires = { 'rktjmp/lush.nvim', opt = true } })
	use('sainnhe/gruvbox-material')
	use('savq/melange')
	use('EdenEast/nightfox.nvim')
	use('shaunsingh/nord.nvim')
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use('sainnhe/sonokai')
	use('folke/tokyonight.nvim')
	use('Mofiqul/vscode.nvim')

	-- misc.
	-- autosave
	-- use({
	-- 	'Pocco81/AutoSave.nvim',
	-- 	config = function()
	-- 		require('autosave').setup({ debounce_delay = 1000 })
	-- 	end,
	-- })

	-- show colors from hex codes
	use({
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	})

	-- highlight todo comments
	use({
		'folke/todo-comments.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = function()
			require('config.todo')
		end,
	})

	-- terminal
	use('akinsho/toggleterm.nvim')
end)
