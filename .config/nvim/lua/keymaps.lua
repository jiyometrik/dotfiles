local g = vim.g
local o = vim.o
local wk = require('which-key')

-- Leader Key --
g.mapleader = ' '
o.timeoutlen = 500 -- set timeoutlen so that we have enough time to type out the whole keymap

wk.register({ ['<leader>'] = {
		-- Buffers --
		b = {
			name = '+buffers',
			-- ['1'] = { '<cmd>BufferLineGoToBuffer 1<cr>', 'buffer-1' },
			-- ['2'] = { '<cmd>BufferLineGoToBuffer 2<cr>', 'buffer-2' },
			-- ['3'] = { '<cmd>BufferLineGoToBuffer 3<cr>', 'buffer-3' },
			-- ['4'] = { '<cmd>BufferLineGoToBuffer 4<cr>', 'buffer-4' },
			-- ['5'] = { '<cmd>BufferLineGoToBuffer 5<cr>', 'buffer-5' },
			-- ['6'] = { '<cmd>BufferLineGoToBuffer 6<cr>', 'buffer-6' },
			-- ['7'] = { '<cmd>BufferLineGoToBuffer 7<cr>', 'buffer-7' },
			-- ['8'] = { '<cmd>BufferLineGoToBuffer 8<cr>', 'buffer-8' },
			-- ['9'] = { '<cmd>BufferLineGoToBuffer 9<cr>', 'buffer-9' },
			-- ['.'] = { '<cmd>BufferLineSortByExtension<cr>', 'sort-by-ext' },
			-- ['/'] = { '<cmd>BufferLineSortByDirectory<cr>', 'sort-by-dir' },
			-- B = { '<cmd>BufferLineMovePrev<cr>', 'move-buffer-back' },
			-- c = { '<cmd>BufferLinePick<cr>', 'pick-buffer' },
			f = { '<cmd>Buffers<cr>', 'find-buffer' },
			-- F = { '<cmd>BufferLineMoveNext<cr>', 'move-buffer-forward' },
			l = { '<cmd>ls<cr>', 'list-buffers' },
			L = { '<cmd>BLines<cr>', 'lines' },
			n = { '<cmd>bn!<cr>', 'next-buffer-id' },
			-- N = { '<cmd>BufferLineCycleNext<CR>', 'next-visible-buffer' },
			p = { '<cmd>bp!<cr>', 'prev-buffer-id' },
			-- P = { '<cmd>BufferLineCyclePrev<CR>', 'prev-visible-buffer' },
			s = { ':sp ', 'horizontal-split-file', silent = false},
			S = { ':sp<cr>',  'horizontal-split' },
			t = { '<cmd>BufferLineSortByTabs<cr>', 'sort-by-tabs' },
			v = { ':vs ', 'vert-split-file', silent = false },
			V = { ':vs<cr>',  'vert-split' },
			['['] = { '<cmd>vert res -5<cr>', 'width-5' },
			[']'] = { '<cmd>vert res +5<cr>', 'width+5' },
			['+'] = { '<cmd>res +5<cr>', 'height+5' },
			['-'] = { '<cmd>res -5<cr>', 'height-5' },
		},

		-- NERDCommenter --
		c = {
			name = '+comments',
			['<space>'] = { '<plug>NERDCommenterToggle', 'toggle', noremap = false },
			['$'] = { '<plug>NERDCommenterToEOL', 'to-eol', noremap = false },
			a = { '<plug>NERDCommenterAltDelims', 'alt-delimiters', noremap = false },
			A = { '<plug>NERDCommenterAppend', 'append', noremap = false },
			b = { '<plug>NERDCommenterAlignBoth', 'align-both', noremap = false },
			c = { '<plug>NERDCommenterComment', 'comment', noremap = false },
			i = { '<plug>NERDCommenterInvert', 'invert', noremap = false },
			l = { '<plug>NERDCommenterAlignLeft', 'align-left', noremap = false },
			m = { '<plug>NERDCommenterMinimal', 'minimal', noremap = false },
			n = { '<plug>NERDCommenterNested', 'nested', noremap = false },
			s = { '<plug>NERDCommenterSexy', 'sexy', noremap = false },
			u = { '<plug>NERDCommenterUncomment', 'uncomment', noremap = false },
			y = { '<plug>NERDCommenterYank', 'yank', noremap = false }
		},

		-- FZF --
		f = {
			name = '+find',
			['/'] = { '<cmd>History/<cr>', 'search-history' },
			[':'] = { '<cmd>History:<cr>', 'command-history' },
			b = { '<cmd>Buffers<cr>', 'buffers' },
			c = { '<cmd>Commits<cr>', 'commits' },
			C = { '<cmd>BCommits<cr>', 'commits-in-buffer' },
			f = { '<cmd>Files<cr>', 'files' },
			g = { '<cmd>GFiles<cr>', 'git-files' },
			h = { '<cmd>History<cr>', 'file-history' },
			l = { '<cmd>BLines<cr>', 'lines-in-buffer' },
			L = { '<cmd>Lines<cr>', 'lines-in-dir' },
			m = { '<cmd>Marks<cr>', 'marks' },
			r = { '<cmd>Rg<cr>', 'ripgrep' },
			s = { '<cmd>GFiles?<cr>', 'git-status' },
			t = { '<cmd>BTags<cr>', 'tags-in-buffer' },
			T = { '<cmd>Tags<cr>', 'tags-in-dir' },
			w = { '<cmd>Windows<cr>', 'windows' }
		},

		-- Git --
		g = {
			name = '+git',
			a = { ':G add ', 'stage', silent = false },
			A = { '<cmd>G add -A<cr>', 'stage-all' },
			b = { ':G branch ', 'branch', silent = false },
			B = { '<cmd>G branch master<cr>', 'branch-to-master' },
			c = { ':G commit -m ""', 'commit', silent = false },
			C = { '<plug>(coc-git-commit)', 'commit-info', silent = false, noremap = false },
			d = { ':G rm ', 'delete', silent = false },
			e = { '<cmd>GitFiles<cr>', 'explorer' },
			f = { ':G fetch ', 'fetch', silent = false },
			H = { '<cmd>G reset HEAD~1<cr>', 'reset-last-commit' },
			i = { '<plug>(coc-git-chunkinfo)', 'chunk-info', silent = false, noremap = false },
			I = { '<plug>(coc-git-chunk-inner)', 'chunk-inner' },
			j = { '<plug>(coc-git-nextconflict)', 'next-conflict', silent = false, noremap = false },
			J = { '<plug>(coc-git-nextchunk)', 'next-chunk', silent = false, noremap = false },
			k = { '<plug>(coc-git-prevconflict)', 'prev-conflict', silent = false, noremap = false },
			K = { '<plug>(coc-git-prevchunk)', 'prev-chunk', silent = false, noremap = false },
			l = { '<cmd>CocList commits<cr>', 'commit-list' },
			L = { '<cmd>CocList bcommits<cr>', 'buffer-commit-list' },
			m = { ':G merge ', 'merge', silent = false },
			M = { '<cmd>G merge origin/master<cr>', 'merge-with-origin/master' },
			O = { '<plug>(coc-git-chunk-outer)', 'chunk-outer' },
			p = { '<cmd>G push<cr>', 'push' },
			P = { '<cmd>G pull<cr>', 'pull' },
			r = { ':G reset ', 'reset', silent = false },
			R = { '<cmd>G restore .<cr>', 'restore-unstaged' },
			s = { '<cmd>GitFiles?<cr>', 'status' },
			S = { '<cmd>G restore -S .<cr>', 'restore-staged' },
			v = { '<cmd>G revert HEAD~1<cr>', 'revert-last-commit' },
			['?'] = { '<cmd>G blame<cr>', 'blame' },
			['>'] = { ':GMove ', 'move', silent = false },
			["'"] = { ':GRename ', 'rename', silent = false }
		},

		-- GitGutter hunk support
		h = {
			name = '+hunks',
			j = { '<plug>(GitGutterNextHunk)', 'next', noremap = false },
			k = { '<plug>(GitGutterPrevHunk)', 'prev', noremap = false },
			p = { '<plug>(GitGutterPreviewHunk)', 'preview', noremap = false },
			s = { '<plug>(GitGutterStageHunk)', 'stage', noremap = false },
			u = { '<plug>(GitGutterUndoHunk)', 'undo', noremap = false }
		},

		-- LSP ft. CoC --
		l = {
			name = '+lsp',
			['('] = { '<plug>(coc-funcobj-i)', 'insert-func', silent = false, noremap = false },
			[')'] = { '<plug>(coc-funcobj-a)', 'append-func', silent = false, noremap = false },
			['['] = { '<plug>(coc-classobj-i)', 'insert-class', silent = false, noremap = false },
			[']'] = { '<plug>(coc-classobj-a)', 'append-class', silent = false, noremap = false },
			a = { '<plug>(coc-codeaction)', 'codeaction', noremap = false, silent = false },
			A = { '<plug>(coc-codeaction-selected)', 'codeaction-selected', noremap = false, silent = false },
			c = { '<cmd>CocList commands<cr>', 'commands', noremap = false, silent = false },
			d = { '<plug>(coc-definition)', 'definition', noremap = false, silent = false },
			e = { '<cmd>CocList diagnostics<cr>', 'diagnostics', noremap = false, silent = false },
			E = { '<cmd>CocList extensions<cr>', 'extensions', noremap = false, silent = false },
			f = { '<plug>(coc-format)', 'format', noremap = false, silent = false },
			F = { '<plug>(coc-format-selected)', 'format-selected', noremap = false, silent = false },
			i = { '<plug>(coc-implementation)', 'implementation', noremap = false, silent = false },
			j = { '<plug>(coc-diagnostic-next)', 'next-error', noremap = false, silent = false },
			k = { '<plug>(coc-diagnostic-prev)', 'prev-error', noremap = false, silent = false },
			m = { '<cmd>CocList marketplace<cr>', 'marketplace', noremap = false, silent = false },
			o = { '<cmd>CocList outline<cr>', 'outline', noremap = false, silent = false },
			p = { '<cmd>CocCommand prettier.formatFile<cr>', 'prettier', noremap = false, silent = false },
			r = { '<plug>(coc-rename)', 'rename', noremap = false, silent = false },
			R = { '<plug>(coc-references)', 'references', noremap = false, silent = false },
			s = { '<cmd>CocList -I symbols<cr>', 'symbols', noremap = false, silent = false },
			t = { '<plug>(coc-type-definition)', 'typedef', noremap = false, silent = false },
			q = { '<plug>(coc-fix-current)', 'quickfix', noremap = false, silent = false },
		},

		-- NERDTree --
		n = {
			name = '+nerdtree',
			['<space>'] = { '<cmd>NERDTree<cr>', 'nerdtree' },
			f = { '<cmd>NERDTreeFocus<cr>', 'focus' },
			i = { '<cmd>NERDTreeFind<cr>', 'find' },
			t = { '<cmd>NERDTreeToggle<cr>', 'toggle' },
		},

		-- Windows --
		w = {
			name = '+windows',
			h = { '<C-w>h', 'left-window' },
			H = { '<C-w>H', 'move-left' },
			i = { '<cmd>Windows<cr>', 'list-windows' },
			j = { '<C-w>j', 'bottom-window' },
			J = { '<C-w>J', 'move-down' },
			k = { '<C-w>k', 'top-window' },
			K = { '<C-w>K', 'move-up' },
			l = { '<C-w>l', 'right-window' },
			L = { '<C-w>L', 'move-right' },
			q = { '<C-w>q', 'quit-window' },
			s = { '<C-w>s', 'horizontal-split' },
			v = { '<C-w>v', 'vert-split' },
			w = { '<C-w>w', 'switch-windows' },
			x = { '<C-w>x', 'exchange-windows' },
			['='] = { '<C-w>=', 'make-all-windows-equal-sized' },
		},

		-- Vimtex --
		x = {
			name = '+vimtex',
			c = { '<cmd>VimtexCompile<cr>', 'compile' },
			C = { '<cmd>VimtexClean<cr>', 'clean-files' },
			d = { '<cmd>VimtexClearCache<cr>', 'clear-cache' },
			e = { '<cmd>VimtexErrors<cr>', 'errors' },
			i = { '<cmd>VimtexImapsList<cr>', 'mappings' },
			l = { '<cmd>VimtexLog<cr>', 'compile-log' },
			p = { '<cmd>VimtexDocPackage<cr>', 'package-docs' },
			r = { '<cmd>VimtexReload<cr>', 'reload' },
			s = { '<cmd>VimtexStatus<cr>', 'compile-status' },
			S = { '<cmd>VimtexStop<cr>', 'stop-compiling' },
			t = { '<cmd>VimtexTocToggle<cr>', 'toggle-toc' },
			v = { '<cmd>VimtexView<cr>', 'view' }
		}
	},

	-- BetterWhitespace --
	['<leader>s'] = { '<cmd>StripWhitespace<cr>', 'strip-whitespace' },
})
