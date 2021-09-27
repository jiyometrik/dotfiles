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

" git (fugitive, coc-git)
let g:which_key_map.g = {'name': '+git'}

" git operations which require input
nnoremap <silent> <leader>ga :G add ./
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

nnoremap <silent> <leader>gcc :G commit -m ""
let g:which_key_map.g.c.c = "commit"

nnoremap <silent> <leader>gd :G rm ./
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

nnoremap <silent> <leader>gr :G reset
let g:which_key_map.g.r = "reset-staging-area"

" undo commits
let g:which_key_map.g.u = {'name': '+undo-commits'}

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

" LSP + coc
let g:which_key_map.l = {
			\ 'name': '+lsp',
			\ '[': ['<Plug>(coc-diagnostic-prev)', 'prev-error'],
			\ ']': ['<Plug>(coc-diagnostic-next)', 'next-error'],
			\ 'd': ['<Plug>(coc-definition)', 'definition'],
			\ 'f': ['<Plug>(coc-format-selected)', 'format-selected'],
			\ 'i': ['<Plug>(coc-implementation)', 'implementation'],
			\ 'p': ['Prettier', 'prettier'],
			\ 'r': ['<Plug>(coc-references)', 'references'],
			\ 't': ['<Plug>(coc-type-definition)', 'typedef']}

" nerdtree
let g:which_key_map.t = {
			\ 'name': '+nerdtree',
			\ ' ': ['NERDTree', 'nerdtree'],
			\ 'f': ['NERDTreeFocus', 'focus'],
			\ 'i': ['NERDTreeFind', 'find'],
			\ 't': ['NERDTreeToggle', 'toggle']}

" fuzzy finder (fzf)
let g:which_key_map.z = {
			\ 'name': '+fuzzy-find',
			\ 'b': ['Buffers', 'buffers'],
			\ 'c': ['Commits', 'commits'],
			\ 'f': ['Files .', 'files'],
			\ 'g': ['GFiles', 'git-files'],
			\ 'm': ['Marks', 'marks'],
			\ 'r': ['Rg', 'ripgrep'],
			\ 's': ['GFiles?', 'git-status'],
			\ 'w': ['Windows', 'windows']}

" fzf history
let g:which_key_map.z.h = {
			\ 'name': '+history',
			\ 'c': [':History:', 'command-history'],
			\ 'f': ['History', 'file-history'],
			\ 's': [':History/', 'search-history']}

" fzf lines
let g:which_key_map.z.l = {
			\ 'name': '+lines',
			\ 'b': ['BLines', 'lines-in-buffer'],
			\ ' ': ['Lines', 'lines-in-project']}

" fzf tags
let g:which_key_map.z.t = {
			\ 'name': '+tags',
			\ 'b': ['BTags', 'tags-in-buffer'],
			\ ' ': ['Tags', 'tags-in-project']}
