local o = vim.o
local cmd = vim.cmd

cmd('set nocompatible')
cmd('filetype plugin indent on')
cmd('syntax enable')
o.fileencoding = 'utf-8' -- file encoding
o.hidden = true

-- line numbers
o.number = true
o.relativenumber = true

-- indentation
o.tabstop = 2
o.shiftwidth = 2
o.autoindent = true
o.smartindent = true

-- show matching brackets
o.showmatch = true
o.showcmd = true

-- conceal (for vimtex)
o.conceallevel = 2

-- line highlight
o.cursorline = true

-- format options
cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- wildmenu (for filepath & buffer completion)
cmd('set path+=**')
o.wildmenu = true

-- mouse
o.mouse = 'a'

-- ignore
cmd('set wildignore+=*.git,*.github,*.github-workflows,*.hg*,*.DS_Store,*.swp*')
