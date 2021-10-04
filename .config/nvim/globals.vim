set number  " line numbers for my sanity
set relativenumber

set tabstop=4  " use tabs, not spaces
set shiftwidth=4
set autoindent
set smartindent
set showmatch  " show matching brackets
" set showcmd " crucial in showing git commands, some of them requiring user input

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete " builtin autocomplete

set path+=**
set wildmenu  " builtin file finder
