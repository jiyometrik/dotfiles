local g = vim.g
local cmd = vim.cmd

-- ultisnips
g.UltiSnipsExpandTrigger = '<Tab>'
g.UltiSnipsJumpForwardTrigger = '<C-b>'
g.UltiSnipsJumpBackwardTrigger = '<C-z>'
cmd("let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips/'")

-- jump placeholders
g.coc_snippet_next = '<c-j>'
g.coc_snippet_prev = '<c-k>'
