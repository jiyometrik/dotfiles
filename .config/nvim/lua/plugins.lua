vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
	use('wbthomason/packer.nvim')

	-- essential
	use({ 'nvim-lua/plenary.nvim', module = 'plenary' })
	use({ 'nvim-lua/popup.nvim', module = 'popup' })
	use({ 'lewis6991/impatient.nvim', module = 'impatient' })
	use({ 'nathom/filetype.nvim', module = 'filetype' })
	use({ 'kyazdani42/nvim-web-devicons', module = 'nvim-web-devicons' })
	use({ 'tweekmonster/startuptime.vim', cmd = 'StartupTime' })

	-- lsp
	use({
		'neovim/nvim-lspconfig',
		config = function()
			require('config.lsp')
		end,
	})

	-- graphical installer
	use('williamboman/nvim-lsp-installer')

	-- completion
	use({
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp', -- lsp completion
			'saadparwaiz1/cmp_luasnip', -- luasnip
			-- 'hrsh7th/cmp-buffer', -- buffer completion
			-- 'hrsh7th/cmp-path', -- path completion (in ex-mode)
			-- 'hrsh7th/cmp-cmdline', -- cmd completion (in ex-mode)
		},
		config = function()
			require('config.completion')
		end,
	})

	-- better lsp ui
	use({
		'tami5/lspsaga.nvim',
		config = function()
			require('lspsaga').init_lsp_saga()
		end,
	})

	-- formatting & debugging
	use({
		'jose-elias-alvarez/null-ls.nvim',
		config = function()
			require('config.null-ls')
		end,
		event = 'BufWrite',
	})

	-- hints as you type
	use('ray-x/lsp_signature.nvim')

	-- icons
	use('onsails/lspkind-nvim')

	-- syntax highlighting
	use({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('config.treesitter')
		end,
	})

	-- bracket colorizer
	use({ 'p00f/nvim-ts-rainbow', after = 'nvim-treesitter', event = 'BufEnter' })

	-- snippet engine
	use({
		'L3MON4D3/LuaSnip',
		config = function()
			require('config.snippet')
		end,
	})

	-- collection of snippets
	use({ 'rafamadriz/friendly-snippets', event = 'InsertEnter' })

	-- latex
	-- use({ 'lervag/vimtex', ft = { 'tex', 'latex' } })

	-- git
	-- use('tpope/vim-fugitive')
	use({
		'TimUntersberger/neogit',
		config = function()
			require('config.neogit')
		end,
		cmd = 'Neogit',
		requires = {
			'sindrets/diffview.nvim',
		},
	})

	use({
		'lewis6991/gitsigns.nvim',
		config = function()
			require('config.gitsigns')
		end,
	})

	-- fuzzy finder
	use({
		'nvim-telescope/telescope.nvim',
		config = function()
			require('config.telescope')
		end,
	})

	-- dashboard
	use({ 'glepnir/dashboard-nvim', event = 'VimEnter' })
	require('config.dashboard')

	-- explorer
	use({
		'kyazdani42/nvim-tree.lua',
		config = function()
			require('config.explorer')
		end,
		cmd = { 'NvimTreeFocus', 'NvimTreeToggle' },
	})

	-- statusline
	use({
		'nvim-lualine/lualine.nvim',
		config = function()
			require('config.statusline')
		end,
		after = 'nvim-web-devicons',
		event = 'VimEnter',
	})

	-- tab line
	use({
		'romgrk/barbar.nvim',
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
		event = 'InsertEnter',
	})

	-- surrounding delimiters
	use({ 'tpope/vim-surround', event = 'VimEnter' })

	-- comment
	use({
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end,
		event = 'VimEnter',
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
		event = 'BufRead',
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
	use({ 'catppuccin/nvim', as = 'catppuccin' })
	use('Mofiqul/dracula.nvim')
	use('sainnhe/edge')
	use('sainnhe/everforest')
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

	-- escape keybindings
	use({
		'max397574/better-escape.nvim',
		config = function()
			require('better_escape').setup({
				mapping = { 'jk', 'jj', 'kj' },
				timeout = vim.o.timeoutlen,
			})
		end,
	})

	-- fast motion
	use({
		'phaazon/hop.nvim',
		config = function()
			require('hop').setup()
		end,
	})

	-- show colors from hex codes
	use({
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	})

	-- terminal
	use({ 'akinsho/toggleterm.nvim', cmd = { 'ToggleTerm', 'ToggleTermToggleAll' } })
end)
