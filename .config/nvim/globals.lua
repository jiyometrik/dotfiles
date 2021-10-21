vim.cmd('filetype plugin indent on')

-- Line Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Indentation
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true

-- show matching brackets
vim.o.showmatch = true
vim.o.showcmd = true

-- conceal (for vimtex)
vim.o.conceallevel = 2

-- wildmenu (for filepath & buffer completion)
vim.cmd('set path+=**')
vim.o.wildmenu = true
