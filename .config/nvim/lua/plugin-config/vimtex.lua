-- vimtex

local g = vim.g
local cmd = vim.cmd

-- backward search
-- install neovim and neovim-remote using pip
-- pdf reader must support backward search

cmd("let &runtimepath = '~/.local/share/nvim/site/pack/packer/opt/vimtex,' . &runtimepath")
cmd("let &runtimepath .= ',~/.local/share/nvim/site/pack/packer/opt/vimtex/after'")

-- Folding
g.vimtex_fold_enabled = 1

-- Viewing
g.vimtex_view_method = 'zathura'
g.vimtex_view_general_viewer = 'zathura'
