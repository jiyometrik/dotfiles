local cmd = vim.cmd
local g = vim.g

-- backward search
-- install neovim and neovim-remote using pip
-- pdf reader must support backward search (zathura / okular)

cmd([[ let &runtimepath = '~/.local/share/nvim/site/pack/packer/opt/vimtex,' . &runtimepath ]])
cmd([[ let &runtimepath .= ',~/.local/share/nvim/site/pack/packer/opt/vimtex/after' ]])

-- viewing
g.vimtex_view_method = 'atril'
g.vimtex_view_general_viewer = 'atril'
