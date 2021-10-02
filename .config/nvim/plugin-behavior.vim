" PLUGIN BEHAVIOUR

" NERDTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
		\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" vim-airline
" let g:airline_powerline_fonts = 1  " powerline fonts
let g:airline#extensions#tabline#enabled = 1  " enable top bar for vim-airline

" Fast Escape for vim-airline
if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif


" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" Better-Whitespace
" let g:better_whitespace_ctermcolor='1;30m'
let g:better_whitespace_enabled = 0
let g:strip_whitespace_on_save = 1


" LaTeX
" final file format: pdf
let g:Tex_DefaultTargetFormat = 'pdf'

" allows .tex files to be compiled into .dvi -> .ps -> .pdf
" let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
" let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi' " compile dvi to ps
" let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps' " compile ps to pdf
" let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
" let g:Tex_MultipleCompileFormats = 'dvi,ps,pdf'

" compile directly to pdf (do not use if you're already using the dvi -> ps -> pdf above)
" let g:Tex_CompileRule_pdf = "pdflatex -synctex=1 --interaction=nonstopmode $*"
" let g:Tex_CompileRule_pdf = "pdflatex --interaction=nonstopmode $*"
let g:Tex_CompileRule_pdf = "pdflatex -synctex=1 -interaction=nonstopmode -recorder $*"
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_FormatDependency_pdf = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'

" viewing (zathura) - only use if you're on a system which supports this viewing
" let g:Tex_ViewRule_dvi = 'zathura'
" let g:Tex_ViewRule_ps = 'zathura'
" let g:Tex_ViewRule_pdf = 'zathura'
