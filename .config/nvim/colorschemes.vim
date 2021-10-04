set bg=dark
syntax on

" Enable TrueColors
if (has("nvim"))
	" For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
" For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
" Based on Vim patch 7.4.1770 (`guicolors` option)
if (has("termguicolors"))
	set termguicolors
endif


" Edge
let g:edge_style = "aura"
let g:edge_enable_italic = 1
colorscheme edge

" Everforest
" let g:everforest_background = 'hard'
" let g:everforest_enable_italic = 1
" colorscheme everforest

" Gruvbox Material
" let g:gruvbox_material_enable_italic = 1
" colorscheme gruvbox-material

" Sonokai
" let g:sonokai_style = "atlantis"
" let g:sonokai_enable_italic = 1
" colorscheme sonokai
