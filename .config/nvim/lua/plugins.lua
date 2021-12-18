vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Packer

	-- startup time
	use 'dstein64/vim-startuptime'

	-- LSP
	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('plugin-config.treesitter')
		end
	}
	
	-- Copilot
	use 'github/copilot.vim'

	-- Snippets
	use 'SirVer/ultisnips'
	use {
		'honza/vim-snippets',
		requires = { 'SirVer/ultisnips' }
	}

	use { 'lervag/vimtex', ft = { 'tex' } } -- LaTeX integration

	-- Git
	use 'tpope/vim-fugitive'
	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('gitsigns').setup()
		end,
	}

	-- Fuzzy Finder
	use {
		'junegunn/fzf.vim',
		requires = {
			'junegunn/fzf',
			run = '!yes | ./install'
		}
	}

	-- File Explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true,
		},
		config = function()
			require('plugin-config/explorer')
		end,
	}

	-- Status Line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugin-config/statusline')
		end,
	}

	use {
		'akinsho/bufferline.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugin-config/tabline')
		end,
	}

	-- Productivity
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end,
	}
	use 'tpope/vim-surround' -- more functional than neovim version
	use {
		'terrortylor/nvim-comment',
		config = function()
			require('nvim_comment').setup()
		end
	}
	use {
		'ntpeters/vim-better-whitespace',
		cmd = 'StripWhitespace',
		opt = true,
	}
	use {
		'folke/which-key.nvim',
		config = function()
			require('which-key').setup()
		end,
	}

	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('plugin-config/indent-blankline')
		end
	}

	-- use 'sainnhe/edge'
	use 'sainnhe/everforest'
	-- use 'sainnhe/gruvbox-material'
	use 'sainnhe/sonokai'
	-- use 'folke/tokyonight.nvim'
	use 'mhinz/vim-startify'
end)
