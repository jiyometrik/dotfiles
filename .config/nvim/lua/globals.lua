local o = vim.o
local cmd = vim.cmd

cmd('set nocompatible')
cmd('filetype plugin indent on')
cmd('syntax enable')
o.fileencoding = 'utf-8' -- file encoding
o.hidden = true

-- line numbers
o.nu = true
o.rnu = true

-- indentation
o.tabstop = 2
o.shiftwidth = 2
o.autoindent = true
-- o.smartindent = true

-- show matching brackets
o.showmatch = true
o.showcmd = true

-- conceal (for vimtex)
o.conceallevel = 2

-- line highlight
o.cursorline = true

-- disable autocommenting when pressing enter or 'o' in normal mode
cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- no swap file
o.swapfile = false

-- persistent undo
o.undofile = true

-- mouse
o.mouse = 'a'

-- gui things
o.guifont = "Hack Nerd Font:h14"
