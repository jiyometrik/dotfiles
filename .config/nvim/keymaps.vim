" set leader key to be more accessible
let g:mapleader = " "

" Prettier Command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Terminal Mode - make it easier to access terminal mode
nnoremap <leader>T :terminal<CR>
tnoremap <Esc> <C-\><C-n>

" nerdcommenter
nmap <silent> <leader>c<Space> <Plug>NERDCommenterToggle
nmap <silent> <leader>c$ <Plug>NERDCommenterToEOL
nmap <silent> <leader>ca <Plug>NERDCommenterAltDelims
nmap <silent> <leader>cA <Plug>NERDCommenterAppend
nmap <silent> <leader>cb <Plug>NERDCommenterAlignBoth
nmap <silent> <leader>cc <Plug>NERDCommenterComment
nmap <silent> <leader>ci <Plug>NERDCommenterInvert
nmap <silent> <leader>cl <Plug>NERDCommenterAlignLeft
nmap <silent> <leader>cm <Plug>NERDCommenterMinimal
nmap <silent> <leader>cn <Plug>NERDCommenterNested
nmap <silent> <leader>cs <Plug>NERDCommenterSexy
nmap <silent> <leader>cu <Plug>NERDCommenterUncomment
nmap <silent> <leader>cy <Plug>NERDCommenterYank

" fuzzy finder (fzf)
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>fc :Commits<CR>
nnoremap <silent> <leader>fC :BCommits<CR>
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fg :GitFiles<CR>

nnoremap <silent> <leader>fhc :History:<CR>
nnoremap <silent> <leader>fhf :History<CR>
nnoremap <silent> <leader>fhs :History/<CR>

nnoremap <silent> <leader>fl<Space> :Lines<CR>
nnoremap <silent> <leader>flb :BLines<CR>

nnoremap <silent> <leader>fm :Marks<CR>
nnoremap <silent> <leader>fr :Rg<CR>
nnoremap <silent> <leader>fs :GitFiles?<CR>

nnoremap <silent> <leader>ft<Space> :Tags<CR>
nnoremap <silent> <leader>ftb :BTags<CR>

nnoremap <silent> <leader>fw :Windows<CR>


" git (fugitive, coc-git)
nnoremap <silent> <leader>ga :G add
nnoremap <silent> <leader>gA :G add -A<CR>
nnoremap <silent> <leader>gb :G branch
nnoremap <silent> <leader>gB :G branch master<CR>

nnoremap <silent> <leader>gcc :G commit -m " "
nnoremap <silent> <leader>gci <Plug>(coc-git-commit)

nnoremap <silent> <leader>gd :G rm
nnoremap <silent> <leader>gf :G fetch
nnoremap <silent> <leader>gm :G merge
nnoremap <silent> <leader>gM :G merge origin/master<CR>
nnoremap <silent> <leader>gp :G push
nnoremap <silent> <leader>gP :G pull

nnoremap <silent> <leader>gr :G reset
nnoremap <silent> <leader>guh :G reset --hard
nnoremap <silent> <leader>gus :G reset --soft
nnoremap <silent> <leader>guH :G reset --hard HEAD~1<CR>
nnoremap <silent> <leader>guS :G reset --soft HEAD~1<CR>

" chunk/conflict navigation (git)
nnoremap <silent> <leader>gC[ <Plug>(coc-git-prevconflict)
nnoremap <silent> <leader>gC] <Plug>(coc-git-nextconflict)

nnoremap <silent> <leader>gg[ <Plug>(coc-git-prevchunk)
nnoremap <silent> <leader>gg] <Plug>(coc-git-nextchunk)
nnoremap <silent> <leader>gga <Plug>(coc-git-chunk-outer)
nnoremap <silent> <leader>ggi <Plug>(coc-git-chunk-inner)
nnoremap <silent> <leader>ggs <Plug>(coc-git-chunkinfo)

" reset local changes
nnoremap <silent> <leader>gR :G restore .<CR>

" LSP + coc
" P.S.: We're chads that don't use VSCode bindings, like F2 and C-p
nmap <silent> <leader>l[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>l] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>la <Plug>(coc-codeaction)
nmap <silent> <leader>lA <Plug>(coc-codeaction-selected)
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lf <Plug>(coc-format)
nmap <silent> <leader>lF <Plug>(coc-format-selected)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lp :Prettier<CR>
nmap <silent> <leader>lr <Plug>(coc-rename)
nmap <silent> <leader>lR <Plug>(coc-references)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>lq <Plug>(coc-fix-current)

" commands which require more than 1 word
nmap <silent> <leader>lc :CocList commands<CR>
nmap <silent> <leader>le :CocList diagnostics<CR>
nmap <silent> <leader>lo :CocList outline<CR>
nmap <silent> <leader>ls :CocList -I symbols<CR>

" nerdtree
nnoremap <silent> <leader>n<Space> :NERDTree<CR>
nnoremap <silent> <leader>nf :NERDTreeFocus<CR>
nnoremap <silent> <leader>ni :NERDTreeFind<CR>
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>


" vimtex
nnoremap <silent> <leader>xc :VimtexCompile<CR>
nnoremap <silent> <leader>xC :VimtexClean<CR>
nnoremap <silent> <leader>xd :VimtexClearCache
nnoremap <silent> <leader>xe :VimtexErrors<CR>
nnoremap <silent> <leader>xi :VimtexImapsList<CR>
nnoremap <silent> <leader>xl :VimtexLog<CR>
nnoremap <silent> <leader>xp :VimtexDocPackage<CR>
nnoremap <silent> <leader>xr :VimtexReload<CR>
nnoremap <silent> <leader>xs :VimtexStop<CR>
nnoremap <silent> <leader>xS :VimtexStatus<CR>
nnoremap <silent> <leader>xt :VimtexTocToggle<CR>
nnoremap <silent> <leader>xv :VimtexView<CR>

" trim whitespace
nmap <silent> <leader>w :StripWhitespace<CR>
