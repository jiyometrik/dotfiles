" set leader key to be more accessible
let g:mapleader = " "


" Prettier Command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Vim-Which-Key - where the real meat is
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" set dictionaries for different mappings
let g:which_key_map = {}


" Terminal Mode - make it easier to access terminal mode
nnoremap <leader>T :terminal<CR>
let g:which_key_map.T = {'name': 'terminal'} " enters terminal
tnoremap <Esc> <C-\><C-n>
" exits terminal


" nerdcommenter
let g:which_key_map.c = {
			\ 'name': '+comments',
			\ ' ': ['<Plug>NERDCommenterToggle', 'toggle'],
			\ '$': ['<Plug>NERDCommenterToEOL', 'to-eol'],
			\ 'a': ['<Plug>NERDCommenterAltDelims', 'alt-delimiters'],
			\ 'A': ['<Plug>NERDCommenterAppend', 'append'],
			\ 'b': ['<Plug>NERDCommenterAlignBoth', 'align-both'],
			\ 'c': ['<Plug>NERDCommenterComment', 'comment'],
			\ 'i': ['<Plug>NERDCommenterInvert', 'invert'],
			\ 'l': ['<Plug>NERDCommenterAlignLeft', 'align-left'],
			\ 'm': ['<Plug>NERDCommenterMinimal', 'minimal'],
			\ 'n': ['<Plug>NERDCommenterNested', 'nested'],
			\ 's': ['<Plug>NERDCommenterSexy', 'sexy'],
			\ 'u': ['<Plug>NERDCommenterUncomment', 'uncomment'],
			\ 'y': ['<Plug>NERDCommenterYank', 'yank']}


" fuzzy finder (fzf)
let g:which_key_map.f = {
			\ 'name': '+fuzzy-find',
			\ 'b': [':Buffers', 'buffers'],
			\ 'c': [':Commits', 'commits'],
			\ 'C': [':BCommits', 'commits-in-buffer'],
			\ 'f': [':Files .', 'files'],
			\ 'g': [':GitFiles', 'git-files'],
			\ 'm': [':Marks', 'marks'],
			\ 'r': [':Rg', 'ripgrep'],
			\ 's': [':GitFiles?', 'git-status'],
			\ 'w': [':Windows', 'windows']}

let g:which_key_map.f.h = {
			\ 'name': '+history',
			\ 'c': [':History:', 'command-history'],
			\ 'f': ['History', 'file-history'],
			\ 's': [':History/', 'search-history']}

let g:which_key_map.f.l = {
			\ 'name': '+lines',
			\ 'b': ['BLines', 'lines-in-current-buffer'],
			\ ' ': ['Lines', 'lines-in-loaded-buffers']}

let g:which_key_map.f.t = {
			\ 'name': '+tags',
			\ 'b': ['BTags', 'tags-in-buffer'],
			\ ' ': ['Tags', 'tags-in-project']}


" git (fugitive, coc-git)
let g:which_key_map.g = {'name': '+git'}

" git operations which require input
nnoremap <silent> <leader>ga :G add
let g:which_key_map.g.a = "stage-file"

nnoremap <silent> <leader>gA :G add -A<CR>
let g:which_key_map.g.A = "stage-all"

nnoremap <silent> <leader>gb :G branch
let g:which_key_map.g.b = "branch"

nnoremap <silent> <leader>gB :G branch master<CR>
let g:which_key_map.g.B = "branch-to-master"

" handling commits
let g:which_key_map.g.c = {
			\ 'name': '+commits',
			\ 'i': ['<Plug>(coc-git-commit)', 'commit-info']}

nnoremap <silent> <leader>gcc :G commit -m " "
let g:which_key_map.g.c.c = "commit"

nnoremap <silent> <leader>gd :G rm
let g:which_key_map.g.d = "delete"

nnoremap <silent> <leader>gf :G fetch
let g:which_key_map.g.f = "fetch"

nnoremap <silent> <leader>gm :G merge
let g:which_key_map.g.m = "merge"

nnoremap <silent> <leader>gM :G merge origin/master<CR>
let g:which_key_map.g.M = "merge-with-origin-master"

nnoremap <silent> <leader>gp :G push
let g:which_key_map.g.p = "push"

nnoremap <silent> <leader>gP :G pull
let g:which_key_map.g.P = "pull"

let g:which_key_map.g.u = {'name': '+undo-commits'}

nnoremap <silent> <leader>gr :G reset
let g:which_key_map.g.r = "reset-staging-area"

nnoremap <silent> <leader>guh :G reset --hard
let g:which_key_map.g.u.h = "undo-commit-hard"

nnoremap <silent> <leader>gus :G reset --soft
let g:which_key_map.g.u.s = "undo-commit-soft"

nnoremap <silent> <leader>guH :G reset --hard HEAD~1<CR>
let g:which_key_map.g.u.H = "undo-last-commit-hard"

nnoremap <silent> <leader>guS :G reset --soft HEAD~1<CR>
let g:which_key_map.g.u.S = "undo-last-commit-soft"

" chunk/conflict navigation (git)
let g:which_key_map.g.C = {
			\ 'name': '+conflicts',
			\ '[': ['<Plug>(coc-git-prevconflict)', 'prev-conflict'],
			\ ']': ['<Plug>(coc-git-nextconflict)', 'next-conflict']}

let g:which_key_map.g.g = {
			\ 'name': '+chunks',
			\ '[': ['<Plug>(coc-git-prevchunk)', 'prev-chunk'],
			\ ']': ['<Plug>(coc-git-nextchunk)', 'next-chunk'],
			\ 's': ['<Plug>(coc-git-chunkinfo)', 'chunk-info'],
			\ 'i': ['<Plug>(coc-git-chunk-inner)', 'inner-chunk'],
			\ 'a': ['<Plug>(coc-git-chunk-outer)', 'outer-chunk']}

" reset local changes
nnoremap <silent> <leader>gR :G restore .<CR>
let g:which_key_map.g.R = "restore"


" LSP + coc
" P.S.: We're chads that don't use VSCode bindings, like F2 and C-p
let g:which_key_map.l = {
			\ 'name': '+lsp',
			\ '[': ['<Plug>(coc-diagnostic-prev)', 'prev-error'],
			\ ']': ['<Plug>(coc-diagnostic-next)', 'next-error'],
			\ 'a': ['<Plug>(coc-codeaction)', 'code-action'],
			\ 'A': ['<Plug>(coc-codeaction-selected)', 'code-action-selected'],
			\ 'd': ['<Plug>(coc-definition)', 'definition'],
			\ 'f': ['<Plug>(coc-format)', 'format'],
			\ 'F': ['<Plug>(coc-format-selected)', 'format-selected'],
			\ 'i': ['<Plug>(coc-implementation)', 'implementation'],
			\ 'p': ['Prettier', 'prettier'],
			\ 'r': ['<Plug>(coc-rename)', 'rename-symbol'],
			\ 'R': ['<Plug>(coc-references)', 'references'],
			\ 't': ['<Plug>(coc-type-definition)', 'typedef'],
			\ 'q': ['<Plug>(coc-fix-current)', 'quickfix']}

" commands which require more than 1 word
nnoremap <silent> <leader>lc :CocList commands<CR>
let g:which_key_map.l.c = "command-list"

nnoremap <silent> <leader>le :CocList diagnostics<CR>
let g:which_key_map.l.e = "errors"

nnoremap <silent> <leader>lo :CocList outline<CR>
let g:which_key_map.l.o = "outline"

nnoremap <silent> <leader>ls :CocList -I symbols<CR>
let g:which_key_map.l.s = "symbols"

" nerdtree
let g:which_key_map.n = {
			\ 'name': '+nerdtree',
			\ ' ': ['NERDTree', 'nerdtree'],
			\ 'f': ['NERDTreeFocus', 'focus'],
			\ 'i': ['NERDTreeFind', 'find'],
			\ 't': ['NERDTreeToggle', 'toggle']}


" latex
let g:which_key_map.x = {'name': '+latex'}

nmap <leader>xc <Plug>Tex_Compile
let g:which_key_map.x.c = 'compile'

nmap <leader>xs <Plug>Tex_ForwardSearch
let g:which_key_map.x.s = 'forward-search'

nmap <leader>xv <Plug>Tex_View
let g:which_key_map.x.v = 'view'

" nnoremap <silent> <leader>xc :VimtexCompile<CR>
" let g:which_key_map.x.c = 'compile'
"
" nnoremap <silent> <leader>xC :VimtexClean<CR>
" let g:which_key_map.x.C = 'clean-files'
"
" nnoremap <silent> <leader>xd :VimtexClearCache<CR>
" let g:which_key_map.x.d = 'clear-cache'
"
" nnoremap <silent> <leader>xe :VimtexErrors<CR>
" let g:which_key_map.x.e = 'errors'
"
" nnoremap <silent> <leader>xi :VimtexImapsList<CR>
" let g:which_key_map.x.i = 'imaps-list'
"
" nnoremap <silent> <leader>xl :VimtexLog<CR>
" let g:which_key_map.x.l = 'compile-log'
"
" nnoremap <silent> <leader>xp :VimtexDocPackage<CR>
" let g:which_key_map.x.p = 'package-docs'
"
" nnoremap <silent> <leader>xr :VimtexReload<CR>
" let g:which_key_map.x.r = 'reload-vimtex'
"
" nnoremap <silent> <leader>xs :VimtexStop<CR>
" let g:which_key_map.x.s = 'stop-compilation'
"
" nnoremap <silent> <leader>xS :VimtexStatus<CR>
" let g:which_key_map.x.S = 'compilation-status'
"
" nnoremap <silent> <leader>xt :VimtexTocToggle<CR>
" let g:which_key_map.x.t = 'toggle-toc'
"
" nnoremap <silent> <leader>xv :VimtexView<CR>
" let g:which_key_map.x.v = 'view'


" trim whitespace
nnoremap <silent> <leader>w :StripWhitespace<CR>
let g:which_key_map.w = 'clean-whitespace'
