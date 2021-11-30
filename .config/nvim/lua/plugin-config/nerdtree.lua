-- NERDTree --
-- Start NERDTree and put the cursor back in the other window.
-- vim.cmd('autocmd VimEnter * NERDTree | wincmd p')

-- If another buffer tries to replace NERDTree, move it to the other window, retaining NERDTree.
vim.cmd [[
	autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
		\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
]]

-- Close the tab if NERDTree is the only window remaining in it.
vim.cmd [[
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]]

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd [[
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]]
-- Show hidden files
vim.g.NERDTreeShowHidden = 1

-- nerdtree-git-plugin --
vim.cmd [[
	let g:NERDTreeGitStatusIndicatorMapCustom = {
		\ 'Modified'  :'✹',
		\ 'Staged'    :'✚',
		\ 'Untracked' :'*',
		\ 'Renamed'   :'➜',
		\ 'Unmerged'  :'═',
		\ 'Deleted'   :'✖',
		\ 'Dirty'     :'✗',
		\ 'Ignored'   :'☒',
		\ 'Clean'     :'✔︎',
		\ 'Unknown'   :'?',
		\}
]]

vim.cmd('let NERDTreeRespectWildIgnore=1')
