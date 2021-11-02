local o = vim.o
local cmd = vim.cmd

cmd('filetype plugin indent on')
cmd('syntax enable')

-- Line Numbers
o.number = true
o.relativenumber = true

-- Indentation
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.autoindent = true
o.smartindent = true

-- show matching brackets
o.showmatch = true
o.showcmd = true

-- conceal (for vimtex)
o.conceallevel = 2

-- wildmenu (for filepath & buffer completion)
cmd('set path+=**')
o.wildmenu = true

-- neovide
cmd('set guifont=JetBrains\\ Mono\\ Nerd\\ Font:h18')
