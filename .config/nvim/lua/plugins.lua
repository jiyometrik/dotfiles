local Plug = vim.fn['plug#']
local call = vim.call

call('plug#begin', '~/.config/nvim/plugged')
-- Plug 'dstein64/vim-startuptime' -- startuptime measure

-- LSP and Snippets
Plug ('neoclide/coc.nvim', { branch = 'release' }) -- Extension wrapper for LSP

Plug 'SirVer/ultisnips' -- Snippet engine
Plug 'honza/vim-snippets' -- Collection of snippets
-- Plug 'ludovicchabant/vim-gutentags' -- Tags Manager

Plug 'sheerun/vim-polyglot' -- Enhanced syntax highlighting
Plug ('lervag/vimtex', { ['for'] = 'tex' }) -- LaTeX integration

-- Git
Plug 'tpope/vim-fugitive' -- Git wrapper for Vim/Neovim
Plug 'airblade/vim-gitgutter' -- Shows Git diff in gutter

-- Fuzzy Finder
-- vim.g.fzf_install = 'yes | ./install'
-- Plug ('junegunn/fzf', { ['do'] = vim.g.fzf_install }) -- Fuzzy Finder Wrapper for Vim
vim.cmd("Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }")
Plug 'junegunn/fzf.vim' -- Fuzzy Finder

-- File Tree
-- Plug 'preservim/nerdtree' -- Filetree
-- Plug 'Xuyuanp/nerdtree-git-plugin' -- Shows git status in filetree

-- Status Line
Plug 'vim-airline/vim-airline'

-- Productivity
-- Plug 'jiangmiao/auto-pairs' -- Autocompletion of brackets
-- Plug 'justinmk/vim-sneak' -- movement
Plug 'tpope/vim-surround' -- Add surrounding delimiters to text objects
Plug 'preservim/nerdcommenter' -- Autocommenter
Plug 'ntpeters/vim-better-whitespace' -- Clears trailing whitespace
Plug 'folke/which-key.nvim' -- Keymap cheatsheet (only works in Neovim)
Plug 'lukas-reineke/indent-blankline.nvim' -- Indent guides

-- Colorschemes & Appearance
Plug 'joshdick/onedark.vim'
-- Plug 'morhetz/gruvbox'
-- Plug 'sainnhe/edge'
-- Plug 'sainnhe/everforest'
-- Plug 'sainnhe/gruvbox-material'
-- Plug 'arcticicestudio/nord-vim'
-- Plug 'sainnhe/sonokai'
-- Plug 'ghifarit53/tokyonight-vim'
Plug 'mhinz/vim-startify' -- start screen
call('plug#end')
