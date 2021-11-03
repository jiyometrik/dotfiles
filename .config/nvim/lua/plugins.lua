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
Plug 'mhinz/vim-signify'

-- Fuzzy Finder
-- FIXME: Cannot get installer to work (commented portion on the next line).
-- Plug 'junegunn/fzf' -- , { ['do'] = { -> fzf#install() } }) -- Doesn't work.
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
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/sonokai'

Plug 'ryanoasis/vim-webdevicons'
call('plug#end')
