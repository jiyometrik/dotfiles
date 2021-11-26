-- Ultisnips --
vim.g.UltiSnipsExpandTrigger = '<Tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<C-b>'
vim.g.UltiSnipsJumpBackwardTrigger = '<C-z>'
-- vim.g.UltiSnipsSnippetDirectories = { "~/.config/nvim/plugged/vim-snippets/UltiSnips", "~/.config/nvim/UltiSnips" }
-- vim.cmd("let g:UltiSnipsSnippetDirectories = [ '~/.config/nvim/plugged/vim-snippets/UltiSnips', '~/.config/nvim/UltiSnips' ]")
vim.cmd("let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips/'")

-- jump placeholders
vim.g.coc_snippet_next = '<c-j>'
vim.g.coc_snippet_prev = '<c-k>'
