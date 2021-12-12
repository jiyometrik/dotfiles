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

	-- Snippets
	use 'SirVer/ultisnips'
	use {
		'honza/vim-snippets',
		requires = { 'SirVer/ultisnips' }
	}

	use 'sheerun/vim-polyglot' -- Better syntax highlighting
	use { 'lervag/vimtex', ft = { 'tex' } } -- LaTeX integration

	-- Git
	use 'tpope/vim-fugitive'
	use 'airblade/vim-gitgutter'

	-- Fuzzy Finder
	use {
		'junegunn/fzf.vim',
		requires = {
			'junegunn/fzf',
			run = '!yes | ./install'
		}
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		config = function()
			require('plugin-config/nvim-tree')
		end,
	}
	-- Status Line
	use 'vim-airline/vim-airline'

	-- Productivity
	use 'tpope/vim-surround'
	use 'preservim/nerdcommenter'
	use {
		'ntpeters/vim-better-whitespace',
		cmd = 'StripWhitespace'
	}
	use {
		'folke/which-key.nvim',
		config = function()
			require('which-key').setup{}
		end
	}

	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('plugin-config/indent-blankline')
		end
	}

	use 'sainnhe/edge'
	use 'sainnhe/everforest'
	use 'sainnhe/gruvbox-material'
	-- use 'arcticicestudio/nord-vim'
	use 'sainnhe/sonokai'
	-- use 'ghifarit53/tokyonight-vim'
	use 'mhinz/vim-startify'
	-- use 'ryanoasis/vim-devicons'
end)
