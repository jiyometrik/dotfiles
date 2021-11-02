local g = vim.g
local map = vim.api.nvim_set_keymap
local op1 = { silent = true }
local op2 = { silent = true, noremap = true }
local op3 = { noremap = true }

-- map the leader key
map('n', '<space>', '', {})
g.mapleader = ' '

-- NERDCommenter
map('n', '<leader>c<space>', '<plug>NERDCommenterToggle', {})
map('n', '<leader>c$', '<plug>NERDCommenterToEOL', {})
map('n', '<leader>ca', '<plug>NERDCommenterAltDelims', {})
map('n', '<leader>cA', '<plug>NERDCommenterAppend', {})
map('n', '<leader>cb', '<plug>NERDCommenterAlignBoth', {})
map('n', '<leader>cc', '<plug>NERDCommenterComment', {})
map('n', '<leader>ci', '<plug>NERDCommenterInvert', {})
map('n', '<leader>cl', '<plug>NERDCommenterAlignLeft', {})
map('n', '<leader>cm', '<plug>NERDCommenterMinimal', {})
map('n', '<leader>cn', '<plug>NERDCommenterNested', {})
map('n', '<leader>cs', '<plug>NERDCommenterSexy', {})
map('n', '<leader>cu', '<plug>NERDCommenterUncomment', {})
map('n', '<leader>cy', '<plug>NERDCommenterYank', {})


-- fzf
map('n', '<leader>f/', ':History/<CR>', op2)
map('n', '<leader>f:', ':History:<cr>', op2)
map('n', '<leader>fb', ':Buffers<cr>', op2)
map('n', '<leader>fc', ':Commits<cr>', op2)
map('n', '<leader>fC', ':BCommits<cr>', op2)
map('n', '<leader>ff', ':Files<cr>', op2)
map('n', '<leader>fg', ':GitFiles<cr>', op2)
map('n', '<leader>fh', ':History<cr>', op2)
map('n', '<leader>fl', ':BLines<cr>', op2)
map('n', '<leader>fL', ':Lines<cr>', op2)
map('n', '<leader>fm', ':Marks<cr>', op2)
map('n', '<leader>fr', ':Rg<cr>', op2)
map('n', '<leader>fs', ':GitFiles?<cr>', op2)
map('n', '<leader>ft', ':BTags<cr>', op2)
map('n', '<leader>fT', ':Tags<cr>', op2)
map('n', '<leader>fw', ':Windows<cr>', op2)


-- git
map('n', '<leader>gA', ':G add -A<cr>', op2)
map('n', '<leader>gB', ':G branch master<CR>', op2)
map('n', '<leader>gC', '<plug>(coc-git-commit)', op2)
map('n', '<leader>ge', ':GitFiles', op2)
map('n', '<leader>gM', ':G merge origin/master<cr>', op2)
map('n', '<leader>gp', ':G push<cr>', op2)
map('n', '<leader>gP', ':G pull<cr>', op2)
map('n', '<leader>gR', ':G restore .<cr>', op2)
map('n', '<leader>gs', ':GitFiles?<cr>', op2)
map('n', '<leader>gv', ':G revert HEAD~1<cr>', op2)
map('n', '<leader>gH', ':G reset --hard HEAD~1<cr>', op2)
map('n', '<leader>gS', ':G reset --soft HEAD~1<cr>', op2)

-- git operations requiring input will not be set as silent
map('n', '<leader>ga', ':G add ', op3)
map('n', '<leader>gb', ':G branch ', op3)
map('n', '<leader>gd', ':G rm ', op3)
map('n', '<leader>gf', ':G fetch ', op3)
map('n', '<leader>gm', ':G merge ', op3)
map('n', '<leader>gr', ':G reset ', op3)

-- conflicts
map('n', '<leader>gj', '<plug>(coc-git-nextconflict)', op2)
map('n', '<leader>gk', '<plug>(coc-git-prevconflict)', op2)

-- chunks
map('n', '<leader>gi', '<plug>(coc-git-chunkinfo)', op2)
map('n', '<leader>gJ', '<plug>(coc-git-nextchunk)', op2)
map('n', '<leader>gK', '<plug>(coc-git-prevchunk)', op2)

map('n', '<leader>gI', '<plug>(coc-git-chunk-inner)', op2)
map('n', '<leader>gO', '<plug>(coc-git-chunk-outer)', op2)


-- LSP ft. CoC
map('n', '<leader>la', '<plug>(coc-codeaction)', op1)
map('n', '<leader>lA', '<plug>(coc-codeaction-selected)', op1)
map('v', '<leader>lA', '<plug>(coc-codeaction-selected)', op1)
map('n', '<leader>lc', ':CocList commands<cr>', op1)
map('n', '<leader>ld', '<plug>(coc-definition)', op1)
map('n', '<leader>le', ':CocList diagnostics<cr>', op1)
map('n', '<leader>lE', ':CocList extensions<cr>', op1)
map('n', '<leader>lf', '<plug>(coc-format)', op1)
map('n', '<leader>lF', '<plug>(coc-format-selected)', op1)
map('v', '<leader>lF', '<plug>(coc-format-selected)', op1)
map('n', '<leader>li', '<plug>(coc-implementation)', op1)
map('n', '<leader>lj', '<plug>(coc-diagnostic-next)', op1)
map('n', '<leader>lk', '<plug>(coc-diagnostic-prev)', op1)
map('n', '<leader>lm', ':CocList marketeplace<cr>', op1)
map('n', '<leader>lo', ':CocList outline<cr>', op1)
map('n', '<leader>lp', '<plug>(coc-prettier)', op1)
map('n', '<leader>lr', '<plug>(coc-rename)', op1)
map('n', '<leader>lR', '<plug>(coc-references)', op1)
map('n', '<leader>ls', ':CocList -I symbols<cr>', op1)
map('n', '<leader>lt', '<plug>(coc-type-definition)', op1)
map('n', '<leader>lq', '<plug>(coc-fix-current)', op1)


-- nerdtree
map('n', '<leader>n<space>', ':NERDTree<cr>', op2)
map('n', '<leader>nf', ':NERDTreeFocus<cr>', op2)
map('n', '<leader>ni', ':NERDTreeFind<cr>', op2)
map('n', '<leader>nt', ':NERDTreeToggle<cr>', op2)


-- clear whitespace
map('n', '<leader>s', ':StripWhitespace<cr>', op1)


-- vimtex
map('n', '<leader>xc', ':VimtexCompile<CR>', op2)
map('n', '<leader>xC', ':VimtexClean<cr>', op2)
map('n', '<leader>xd', ':VimtexClearCache<cr>', op2)
map('n', '<leader>xe', ':VimtexErrors<cr>', op2)
map('n', '<leader>xi', ':VimtexImapsList<cr>', op2)
map('n', '<leader>xl', ':VimtexLog<cr>', op2)
map('n', '<leader>xp', ':VimtexDocPackage<cr>', op2)
map('n', '<leader>xr', ':VimtexReload<cr>', op2)
map('n', '<leader>xs', ':VimtexStatus<cr>', op2)
map('n', '<leader>xS', ':VimtexStop<cr>', op2)
map('n', '<leader>xt', ':VimtexTocToggle<cr>', op2)
map('n', '<leader>xv', ':VimtexView<cr>', op2)
