vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
	-- package management
	use 'wbthomason/packer.nvim'

	-- startup time
	use 'dstein64/vim-startuptime'

	-- lsp
	use {
		'neovim/nvim-lspconfig',
		config = function()
			require('plugin-config.lsp')
		end
	}

	-- graphical installer
	use 'williamboman/nvim-lsp-installer'

	-- better ui for lsp (not currently working)
	use {
		'glepnir/lspsaga.nvim',
		config = function()
			require('lspsaga').init_lsp_saga()
		end
	}

	-- hints as you type
	use 'ray-x/lsp_signature.nvim'

	-- nice icons
	use 'onsails/lspkind-nvim'

	-- syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('plugin-config.treesitter')
		end
	}

	-- snippet engine
	use 'L3MON4D3/LuaSnip'

	-- collection of snippets
	use {'rafamadriz/friendly-snippets', requires = 'L3MON4D3/LuaSnip'}

	-- completion
	use {
		'hrsh7th/nvim-cmp',
		-- completion sources
		requires = {
			'hrsh7th/cmp-nvim-lsp', -- lsp completion
			'hrsh7th/cmp-buffer', -- buffer completion
			'hrsh7th/cmp-path', -- path completion (in ex-mode)
			'hrsh7th/cmp-cmdline', -- cmd completion (in ex-mode)
			'saadparwaiz1/cmp_luasnip' -- luasnip
		},
		config = function()
			require('plugin-config.completion')
		end
	}

	-- ai completion
	use 'github/copilot.vim'

	-- latex
	use {'lervag/vimtex', ft = {'tex'}}

	-- git
	use 'tpope/vim-fugitive'

	-- git diffs
	use {
		'lewis6991/gitsigns.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = function()
			require('telescope').setup()
		end
	}

	-- dashboard
	use 'glepnir/dashboard-nvim'
	require('plugin-config.dashboard')

	-- explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('plugin-config.explorer')
		end
	}

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('plugin-config.statusline')
		end
	}

	-- tab line
	use {
		'akinsho/bufferline.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('plugin-config.tabline')
		end
	}

	-- auto-complete bracket pairs
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end
	}

	-- surrounding delimiters
	use 'tpope/vim-surround'

	-- commenter
	use {
		'terrortylor/nvim-comment',
		config = function()
			require('nvim_comment').setup()
		end
	}

	-- removes trailing whitespace
	use {
		'ntpeters/vim-better-whitespace',
		cmd = 'StripWhitespace',
		opt = true
	}

	-- keymap cheatsheet
	use {
		'folke/which-key.nvim',
		config = function()
			require('which-key').setup()
		end
	}

	-- indent guide
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('plugin-config.indent-blankline')
		end
	}

	use {
		'folke/zen-mode.nvim',
		requires = {
			'folke/twilight.nvim',
			config = function()
				require('twilight').setup()
			end
		},
		config = function()
			require('zen-mode').setup {
				plugins = {
					gitsigns = {enabled = true},
				}
			}
		end,
		cmd = 'ZenMode'
	}

	-- themes
	-- use 'Shatur/neovim-ayu'
	-- use 'Mofiqul/dracula.nvim'
	-- use 'sainnhe/edge'
	-- use 'sainnhe/everforest'
	-- use {'ellisonleao/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}
	-- use 'sainnhe/gruvbox-material'
	-- use 'shaunsingh/nord.nvim'
	-- use 'sainnhe/sonokai'
	use 'folke/tokyonight.nvim'

	-- misc
	use { -- color hex codes
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end
	}
end)
