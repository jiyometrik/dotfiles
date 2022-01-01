local g = vim.g
local cmd = vim.cmd

-- backward search
-- install neovim and neovim-remote using pip
-- pdf reader must support backward search (zathura / okular)

cmd([[ let &runtimepath = '~/.local/share/nvim/site/pack/packer/opt/vimtex,' . &runtimepath ]])
cmd([[ let &runtimepath .= ',~/.local/share/nvim/site/pack/packer/opt/vimtex/after' ]])

-- Folding
g.vimtex_fold_enabled = 1

-- Viewing
g.vimtex_view_method = 'zathura'
g.vimtex_view_general_viewer = 'zathura'

cmd([[
	let g:vimtex_compiler_latexmk_engines = {
		\ '_'                : '-xelatex',
		\ 'pdflatex'         : '-pdf',
		\ 'dvipdfex'         : '-pdfdvi',
		\ 'lualatex'         : '-lualatex',
		\ 'xelatex'          : '-xelatex',
		\ 'context (pdftex)' : '-pdf -pdflatex=texexec',
		\ 'context (luatex)' : '-pdf -pdflatex=context',
		\ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
	\}
]])
