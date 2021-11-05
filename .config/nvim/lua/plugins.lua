local Plug = vim.fn['plug#']
local call = vim.call

call('plug#begin', '~/.config/nvim/plugged')

-- LSP and Snippets
Plug ('neoclide/coc.nvim', { branch = 'release' })

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'sheerun/vim-polyglot'
Plug ('lervag/vimtex', { ['for'] = 'tex' })
-- Git
Plug 'tpope/vim-fugitive'
-- Plug 'airblade/vim-gitgutter' -- Plug 'mhinz/vim-signify'

-- Fuzzy Finder
vim.g.fzf_install = 'yes | ./install'
Plug ('junegunn/fzf', { ['do'] = vim.g.fzf_install }) -- Works.
Plug 'junegunn/fzf.vim'

-- File Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

-- Status Line
Plug 'vim-airline/vim-airline'

-- Productivity
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'

Plug 'folke/which-key.nvim'
require('which-key').setup{}

-- Colorschemes & Appearance
-- Plug ('dracula/vim', { as = 'dracula' })
-- Plug 'sainnhe/edge'
-- Plug 'sainnhe/everforest'
-- Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
-- Plug 'sainnhe/sonokai'
Plug 'ghifarit53/tokyonight-vim'

Plug 'ryanoasis/vim-webdevicons'
call('plug#end')
