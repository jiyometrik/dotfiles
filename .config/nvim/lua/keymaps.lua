local g = vim.g
local o = vim.o
local wk = require('which-key')

-- Leader Key --
g.mapleader = ' '
o.timeoutlen = 500 -- set timeoutlen so that we have enough time to type out the whole keymap

wk.register({
	['<leader>'] = {
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
			c = { ':G commit ""', 'commit', silent = false },
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

		-- LSP ft. CoC --
		l = {
			name = '+lsp',
			['('] = { '<plug>(coc-funcobj-i)', 'insert-func', silent = false, noremap = false },
			[')'] = { '<plug>(coc-funcobj-a)', 'append-func', silent = false, noremap = false },
			['['] = { '<plug>(coc-classobj-i)', 'insert-class', silent = false, noremap = false },
			[']'] = { '<plug>(coc-classobj-a)', 'append-class', silent = false, noremap = false },
			a = { '<plug>(coc-codeaction)', 'codeaction', noremap = false },
			A = { '<plug>(coc-codeaction-selected)', 'codeaction-selected', noremap = false },
			c = { '<cmd>CocList commands<cr>', 'commands', noremap = false },
			d = { '<plug>(coc-definition)', 'definition', noremap = false },
			-- D = { '<cmd>call <SID>show_documentation()<cr>', 'documentation', noremap = false },
			e = { '<cmd>CocList diagnostics<cr>', 'diagnostics', noremap = false },
			E = { '<cmd>CocList extensions<cr>', 'extensions', noremap = false },
			f = { '<plug>(coc-format)', 'format', noremap = false },
			F = { '<plug>(coc-format-selected)', 'format-selected', noremap = false },
			i = { '<plug>(coc-implementation)', 'implementation', noremap = false },
			j = { '<plug>(coc-diagnostic-next)', 'next-error', noremap = false },
			k = { '<plug>(coc-diagnostic-prev)', 'prev-error', noremap = false },
			m = { '<cmd>CocList marketplace<cr>', 'marketplace', noremap = false },
			o = { '<cmd>CocList outline<cr>', 'outline', noremap = false },
			p = { '<cmd>CocCommand prettier.formatFile<cr>', 'prettier', noremap = false },
			r = { '<plug>(coc-rename)', 'rename', noremap = false },
			R = { '<plug>(coc-references)', 'references', noremap = false },
			s = { '<cmd>CocList -I symbols<cr>', 'symbols', noremap = false },
			t = { '<plug>(coc-type-definition)', 'typedef', noremap = false },
			q = { '<plug>(coc-fix-current)', 'quickfix', noremap = false }
		},

		-- NERDTree --
		n = {
			name = '+nerdtree',
			['<space>'] = { '<cmd>NERDTree<cr>', 'nerdtree' },
			f = { '<cmd>NERDTreeFocus<cr>', 'focus' },
			i = { '<cmd>NERDTreeFind<cr>', 'find' },
			t = { '<cmd>NERDTreeToggle<cr>', 'toggle' }
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
	['<leader>s'] = { '<cmd>StripWhitespace<cr>', 'strip-whitespace' }
})
