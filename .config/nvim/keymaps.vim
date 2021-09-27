" set leader key to be more accessible
let g:mapleader = " "

" LSP configs
" 1. Formatters
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" vmap <leader>lf  <Plug>(coc-format-selected)
" nmap <leader>lf  <Plug>(coc-format-selected)<CR>
" nnoremap <leader>lp :Prettier<CR>

" 2. Diagnostics
" nmap <silent> <leader>l[ <Plug>(coc-diagnostic-prev)
" nmap <silent> <leader>l] <Plug>(coc-diagnostic-next)

" 3. Definitions
" nmap <silent> <leader>ld <Plug>(coc-definition)
" nmap <silent> <leader>lt <Plug>(coc-type-definition)
" nmap <silent> <leader>li <Plug>(coc-implementation)
" nmap <silent> <leader>lr <Plug>(coc-references)


" fuzzy finder keybindings
" nnoremap <leader>zb :Buffers<CR>
" nnoremap <leader>zc :Commits<CR>
" nnoremap <leader>zf	:Files .<CR>
" nnoremap <leader>zg :GFiles<CR>
" nnoremap <leader>zhc :History:<CR>
" nnoremap <leader>zhf :History<CR>
" nnoremap <leader>zhs :History/<CR>
" nnoremap <leader>zm :Marks<CR>
" nnoremap <leader>zl<Space> :Lines<CR>
" nnoremap <leader>zlb :BLines<CR>
" nnoremap <leader>zr :Rg
" nnoremap <leader>zs :GFiles?<CR>
" nnoremap <leader>zt :BTags
" nnoremap <leader>zw :Windows<CR>


" NERDTree Remaps
" nnoremap <leader>tf :NERDTreeFocus<CR>
" nnoremap <leader>t<Space> :NERDTree<CR>
" nnoremap <leader>tt :NERDTreeToggle<CR>
" nnoremap <leader>ti :NERDTreeFind<CR>


" Vim-Which-Key
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" set dictionaries for different mappings
let g:which_key_map = {}

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
			\ 'y': ['<Plug>NERDCommenterYank', 'yank']
			\}

let g:which_key_map.l = {
			\ 'name': '+lsp',
			\ '[': ['<Plug>(coc-diagnostic-prev)', 'prev-error'],
			\ ']': ['<Plug>(coc-diagnostic-next)', 'next-error'],
			\ 'd': ['<Plug>(coc-definition)', 'definition'],
			\ 'f': ['<Plug>(coc-format-selected)', 'format-selected'],
			\ 'i': ['<Plug>(coc-implementation)', 'implementation'],
			\ 'p': ['Prettier', 'prettier'],
			\ 'r': ['<Plug>(coc-references)', 'references'],
			\ 't': ['<Plug>(coc-type-definition)', 'typedef']
			\}

let g:which_key_map.t = {
			\ 'name': '+nerdtree',
			\ ' ': ['NERDTree', 'nerdtree'],
			\ 'f': ['NERDTreeFocus', 'focus'],
			\ 'i': ['NERDTreeFind', 'find'],
			\ 't': ['NERDTreeToggle', 'toggle']}

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

let g:which_key_map.z.h = {
			\ 'name': '+history',
			\ 'c': [':History:', 'command-history'],
			\ 'f': ['History', 'file-history'],
			\ 's': [':History/', 'search-history'],
			\}

let g:which_key_map.z.l = {
			\ 'name': '+lines',
			\ 'b': ['BLines', 'lines-in-buffer'],
			\ ' ': ['Lines', 'lines-in-project']
			\}

let g:which_key_map.z.t = {
			\ 'name': '+tags',
			\ 'b': ['BTags', 'tags-in-buffer'],
			\ ' ': ['Tags', 'tags-in-project']
			\}
