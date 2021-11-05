-- Vimtex --
-- Backward Search
--[[
To enable backward search, run `pip install neovim`
and `pip install neovim-remote` for the remote servers
to run correctly.
--]]

vim.cmd("let &runtimepath  = '~/.config/nvim/plugged/vimtex,' . &runtimepath")
vim.cmd("let &runtimepath .= ',~/.config/nvim/plugged/vimtex/after'")

-- Folding
vim.g.vimtex_fold_enabled = 1

-- Viewing
vim.g.vimtex_view_method = 'zathura'

-- Pairs (ensure that you have coc-pairs installed)
vim.cmd("autocmd FileType tex let b:coc_pairs = [['$', '$']]")
