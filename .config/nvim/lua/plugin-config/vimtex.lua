-- vimtex

local g = vim.g
local cmd = vim.cmd

-- backward search
--[[
To enable backward search, run `pip install neovim`
and `pip install neovim-remote` for the remote servers
to run correctly.
You should also ensure that you have a pdf reader that supports backward search.
--]]

cmd("let &runtimepath = '~/.local/share/nvim/site/pack/packer/opt/vimtex,' . &runtimepath")
cmd("let &runtimepath .= ',~/.local/share/nvim/site/pack/packer/opt/vimtex/after'")

-- Folding
g.vimtex_fold_enabled = 1

-- Viewing
g.vimtex_view_method = 'zathura'
g.vimtex_view_general_viewer = 'zathura'
