call plug#begin('~/.config/nvim/plugged')

" LSP and Snippets
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " language servers and all that fun stuff

Plug 'SirVer/ultisnips' " this is for more snippets using coc-ultisnips
Plug 'honza/vim-snippets' " snippets for coc-snippets

Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex', { 'for': 'tex' }

" Git
Plug 'tpope/vim-fugitive' " Yet another Git Integration for Git Commands
Plug 'mhinz/vim-signify' " faster version

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File Tree
Plug 'preservim/nerdtree' " File Tree
Plug 'Xuyuanp/nerdtree-git-plugin' " Git for File Tree

" Status Line
Plug 'vim-airline/vim-airline' " Status Bar

" Productivity
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' " enables faster editing with surrounding delimiters
Plug 'preservim/nerdcommenter' " autocomment
Plug 'ntpeters/vim-better-whitespace' " cleans whitespace

Plug 'folke/which-key.nvim'
lua << EOF
require('which-key').setup{}
EOF

" Colorschemes & Appearance
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/sonokai'

Plug 'ryanoasis/vim-webdevicons'
call plug#end()

source $HOME/.config/nvim/plugin-behavior.vim  " settings for plugin behavior
