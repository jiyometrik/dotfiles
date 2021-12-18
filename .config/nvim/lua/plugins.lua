vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
	-- package management
	use 'wbthomason/packer.nvim'

	-- startup time
	use 'dstein64/vim-startuptime'

	-- lsp
	use {'neoclide/coc.nvim', branch = 'release'}

	-- better syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('plugin-config.treesitter')
		end
	}

	-- ai completion
	use 'github/copilot.vim'

	-- snippet engine
	use 'SirVer/ultisnips'

	-- collection of snippets
	use {'honza/vim-snippets', requires =  'SirVer/ultisnips'}

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
		'junegunn/fzf.vim',
		requires = {'junegunn/fzf', run = '!yes | ./install'}
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
end)
