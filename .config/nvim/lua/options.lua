local g = vim.g
local o = vim.o
local cmd = vim.cmd

cmd('set nocompatible')
cmd('filetype plugin indent on')
cmd('syntax enable')

o.fileencoding = 'utf-8' -- file encoding
o.timeoutlen = 350
o.hidden = true

-- disable some of the builtin plugins
g.loaded_gzip = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zipPlugin = 1
g.loaded_2html_plugin = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_spec = 1

-- line numbers
o.nu = true
o.rnu = true

-- indentation (tabs > spaces imo)
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.autoindent = true
o.smartindent = true

-- ui elements
o.showmatch = true
o.showcmd = true
o.showmode = false
o.ruler = false

-- line highlight
-- o.cursorline = true

-- disable autocommenting when pressing enter or 'o' in normal mode
cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- no swap file
o.swapfile = false

-- persistent undo
o.undofile = true

-- buffer opening
o.splitbelow = true
o.splitright = true

-- case-insensitive search
o.ignorecase = true

-- mouse
o.mouse = 'a'
