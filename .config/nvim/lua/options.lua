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

-- indentation (tabs > spaces imo)
o.tabstop = 2
o.shiftwidth = 2
o.autoindent = true
o.smartindent = true

-- ui elements
o.showmatch = true
o.showcmd = false
o.showmode = false
o.ruler = false

-- line highlight
o.cursorline = true

-- disable autocommenting when pressing enter or 'o' in normal mode
cmd([[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]])

-- no swap file
o.swapfile = false

-- persistent undo
o.undofile = true

-- clipboard
-- o.clipboard = "unnamedplus" -- quite annoying when you have to delete something then paste something else

-- buffer opening
o.splitbelow = true
o.splitright = true

-- case-insensitive search
o.ignorecase = true

-- mouse
o.mouse = 'a'

-- gui
o.guifont = 'BlexMono Nerd Font:h9'
