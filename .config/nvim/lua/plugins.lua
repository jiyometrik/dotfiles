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
	-- use 'glepnir/lspsaga.nvim'

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
	use 'SirVer/ultisnips'

	-- collection of snippets
	use {'honza/vim-snippets', requires = 'SirVer/ultisnips'}

	-- completion
	use {
		'hrsh7th/nvim-cmp',
		-- completion sources
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'quangnguyen30192/cmp-nvim-ultisnips'
		},
		config = function()
			require('plugin-config/completion')
		end,
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
		end,
	}

	-- dashboard
	use 'glepnir/dashboard-nvim'
	require('plugin-config/dashboard')

	-- explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('plugin-config/explorer')
		end
	}

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('plugin-config/statusline')
		end
	}

	-- tab line
	use {
		'akinsho/bufferline.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require('plugin-config/tabline')
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
			require('plugin-config/indent-blankline')
		end
	}

	-- themes
	use 'sainnhe/edge'
	use 'sainnhe/everforest'
	use 'sainnhe/gruvbox-material'
	use 'sainnhe/sonokai'
	use 'folke/tokyonight.nvim'

	-- misc
	use {
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end
	}
end)
