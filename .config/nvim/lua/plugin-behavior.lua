local g = vim.g
local cmd = vim.cmd


-- Ultisnips --
g.UltiSnipsExpandTrigger = '<Tab>'
g.UltiSnipsJumpForwardTrigger = '<C-b>'
g.UltiSnipsJumpBackwardTrigger = '<C-z>'


-- NERDTree --
--[[
Start NERDTree and put the cursor back in the other window.
--]]
cmd('autocmd VimEnter * NERDTree | wincmd p')

--[[
If another buffer tries to replace NERDTree,
move it to the other window, retaining NERDTree.
--]]
cmd [[
	autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
		\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
]]

--[[
Close the tab if NERDTree is the
only window remaining in it.
--]]
cmd [[
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]]

--[[
Exit Vim if NERDTree is the only window
remaining in the only tab.
--]]
cmd [[
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]]

-- Show hidden directories.
g.NERDTreeShowHidden = 1


-- Vim-Airline --
-- Enable Powerline fonts.
g.airline_powerline_fonts = 1

-- Enable bufferline/tabline.
cmd('let g:airline#extensions#tabline#enabled = 1')

-- Allow Vim-Airline to update modes whenever we hit Esc.
cmd [[
	if ! has('gui_running')
		set ttimeoutlen=10
		augroup FastEscape
			autocmd!
			au InsertEnter * set timeoutlen=0
			au InsertLeave * set timeoutlen=1000
		augroup END
	endif
]]


-- Vim-Sneak --
cmd('let g:sneak#label = 1')

-- Indent-Blankline.nvim --
vim.o.list = true
require('indent_blankline').setup {
	show_current_context = true,
	show_current_context_start = true,
	set_conceal = 0,
}

-- NERDCommenter --
-- Add spaces after comment delimiters by default
g.NERDSpaceDelims = 1

-- Use compact syntax for prettified multi-line comments
g.NERDCompactSexyComs = 1

-- Align line-wise comment delimiters flush left instead of following code indentation
g.NERDDefaultAlign = 'left'

-- Allow commenting and inverting empty lines (useful when commenting a region)
g.NERDCommentEmptyLines = 1

-- Enable trimming of trailing whitespace when uncommenting
g.NERDTrimTrailingWhitespace = 1

-- Enable NERDCommenterToggle to check all selected lines is commented or not
g.NERDToggleCheckAllLines = 1


-- Vimtex --
--[[
Backward Search

To enable backward search, run `pip install neovim`
and `pip install neovim-remote` for the remote servers
to run correctly.
--]]

cmd("let &runtimepath  = '~/.config/nvim/plugged/vimtex,' . &runtimepath")
cmd("let &runtimepath .= ',~/.config/nvim/plugged/vimtex/after'")

-- Folding
g.vimtex_fold_enabled = 1

-- Viewing
g.vimtex_view_method = 'zathura'

-- Pairs (ensure that you have coc-pairs installed)
cmd("autocmd FileType tex let b:coc_pairs = [['$', '$']]")
