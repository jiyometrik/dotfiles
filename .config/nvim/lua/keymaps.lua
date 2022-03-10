local g = vim.g
local o = vim.o
local map = vim.api.nvim_set_keymap
local w = require('which-key')

-- leader key
g.mapleader = ' '

-- terminal mode escape
map('t', '<esc>', [[<c-\><c-n>]], { noremap = true })

-- windows
local opts = { silent = true, noremap = true }
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-s>', '<C-w>x', opts)
map('n', '<C-q>', '<C-w>q', opts)

w.register({
	['<leader>'] = {
		-- buffers
		b = {
			name = '+buffers',
			['1'] = { ':BufferGoto 1<cr>', 'buffer-1' },
			['2'] = { ':BufferGoto 2<cr>', 'buffer-2' },
			['3'] = { ':BufferGoto 3<cr>', 'buffer-3' },
			['4'] = { ':BufferGoto 4<cr>', 'buffer-4' },
			['5'] = { ':BufferGoto 5<cr>', 'buffer-5' },
			['6'] = { ':BufferGoto 6<cr>', 'buffer-6' },
			['7'] = { ':BufferGoto 7<cr>', 'buffer-7' },
			['8'] = { ':BufferGoto 8<cr>', 'buffer-8' },
			['9'] = { ':BufferLast<cr>', 'last-buffer' },
			a = { ':BufferOrderByLanguage<cr>', 'sort-by-lang' },
			b = { ':BufferOrderByBufferNumber<cr>', 'sort-by-bufnum' },
			c = { ':BufferClose<cr>', 'close' },
			d = { ':BufferOrderByDirectory<cr>', 'sort-by-dir' },
			g = { ':Telescope live_grep<cr>', 'grep' },
			h = { ':BufferMovePrevious<cr>', 'move-left' },
			H = { ':BufferCloseBuffersLeft<cr>', 'close-to-left' },
			i = { ':BufferPin<cr>', 'pin' },
			j = { ':BufferNext<cr>', 'next-buffer' },
			k = { ':BufferPrevious<cr>', 'prev-buffer' },
			l = { ':BufferMoveNext<cr>', 'move-right' },
			L = { ':BufferCloseBuffersRight<cr>', 'close-to-right' },
			o = { ':BufferOrderByWindowNumber<cr>', 'sort-by-winnum' },
			p = { ':BufferPick<cr>', 'pick' },
			q = { ':BufferCloseAllButPinned<cr>', 'close-all-but-pinned' },
			s = { ':sp<cr>', 'horizontal-split' },
			v = { ':vs<cr>', 'vert-split' },
			w = { ':BufferWipeout<cr>', 'wipeout' },
			x = { ':BufferCloseAllButCurrent<cr>', 'close-all-but-current' },
			['['] = { ':vert res -5<cr>', 'width-5' },
			[']'] = { ':vert res +5<cr>', 'width+5' },
			['+'] = { ':res +5<cr>', 'height+5' },
			['-'] = { ':res -5<cr>', 'height-5' },
			['.'] = { ':SessionSave<cr>', 'save-session' },
			[','] = { ':SessionLoad<cr>', 'load-session' },
			[';'] = { ':new<cr>', 'new-buffer' },
		},

		-- telescope
		f = {
			name = '+find',
			['.'] = { ':Telescope colorscheme<cr>', 'colorschemes' },
			['/'] = { ':Telescope search_history<cr>', 'search-history' },
			[':'] = { ':Telescope command_history<cr>', 'command-history' },
			b = { ':Telescope buffers<cr>', 'buffers' },
			B = { ':Telescope git_branches<cr>', 'branches' },
			c = { ':Telescope git_commits<cr>', 'commits' },
			C = { ':Telescope git_bcommits<cr>', 'commits-in-buffer' },
			f = { ':Telescope find_files<cr>', 'find-files' },
			g = { ':Telescope git_files<cr>', 'git-files' },
			h = { ':Telescope oldfiles<cr>', 'file-history' },
			k = { ':Telescope keymaps<cr>', 'keymappings' },
			l = {
				name = '+lsp',
				a = { ':Telescope lsp_code_actions<cr>', 'code-actions' },
				A = { ':Telescope lsp_range_code_actions<cr>', 'code-actions-range' },
				d = { ':Telescope lsp_definitions<cr>', 'definitions' },
				e = { ':Telescope diagnostics<cr>', 'diagnostics' },
				i = { ':Telescope lsp_implementation<cr>', 'implementations' },
				r = { ':Telescope lsp_references<cr>', 'references' },
				s = { ':Telescope lsp_document_symbols<cr>', 'doc-symbols' },
				S = { ':Telescope lsp_workspace_symbols<cr>', 'workspace-symbols' },
				t = { ':Telescope lsp_type_definitions<cr>', 'typedefs' },
				['?'] = { ':Telescope lsp_dynamic_workspace_symbols', 'dynamic-workspace-symbols' },
			},
			O = { ':TodoTelescope<cr>', 'todo-comments' },
			q = { ':Telescope quickfix<cr>', 'quickfixes' },
			r = { ':Telescope live_grep<cr>', 'ripgrep' },
			s = { ':Telescope git_status<cr>', 'git-status' },
			S = { ':Telescope git_stash<cr>', 'git-stash' },
			z = { ':Telescope current_buffer_fuzzy_find<cr>', 'fuzzy-find' },
		},

		-- git
		g = {
			name = '+git',
			['<space>'] = { ':Neogit kind=split<cr>', 'neogit' },
			b = { ':Telescope branches<cr>', 'branches' },
			c = { ':Neogit commit kind=split<cr>', 'commit' },
			d = { ':DiffviewOpen<cr>', 'diffview' },
			D = { ':DiffviewOpen origin/master...HEAD<cr>', 'compare-master-with-head' },
			f = { ':DiffviewToggleFiles<cr>', 'changed-files' },
			h = { ':Telescope git_stash<cr>', 'stash' },
			s = { ':Neogit kind=vsplit<cr>', 'vsplit' },
			t = { ':Telescope git_status<cr>', 'status' },
			r = { ':DiffviewRefresh<cr>', 'refresh-diffs' },
			x = { ':DiffviewClose<cr>', 'close-diff' },
		},

		-- lsp
		l = {
			name = '+lsp',
			a = { ':lua vim.lsp.buf.code_action()<cr>', 'codeaction' },
			d = { ':lua vim.lsp.buf.definition()<cr>', 'definition' },
			D = { ':lua vim.lsp.buf.declaration()<cr>', 'declaration' },
			e = { ':Trouble document_diagnostics<cr>', 'diagnostics' },
			f = { ':lua vim.lsp.buf.formatting()<cr>', 'format' },
			h = { ':lua vim.lsp.buf.hover()<cr>', 'hover-doc' },
			i = { ':lua vim.lsp.buf.implementation()<cr>', 'implementation' },
			j = { ':lua vim.lsp.diagnostic.goto_next({ wrap = false })<cr>', 'next-diagnostic' },
			k = { ':lua vim.lsp.diagnostic.goto_prev({ wrap = false })<cr>', 'prev-diagnostic' },
			r = { ':lua vim.lsp.buf.rename()<cr>', 'rename' },
			R = { ':Trouble lsp_references<cr>', 'references' },
			S = { ':lua vim.lsp.buf.document_symbol()<cr>', 'document-symbols' },
			t = { ':lua vim.lsp.buf.type_definition()<cr>', 'type-definition' },
		},

		-- trouble
		t = {
			name = '+trouble',
			['<space>'] = { ':TroubleToggle<cr>', 'trouble' },
			d = { ':TroubleToggle workspace_diagnostics<cr>', 'workspace-diagnostics' },
			e = { ':TroubleToggle document_diagnostics<cr>', 'doc-diagnostics' },
			o = { ':TodoTrouble<cr>', 'todo-comments' },
			l = { ':TroubleToggle loclist<cr>', 'loclist' },
			r = { ':TroubleToggle lsp_references<cr>', 'references' },
			q = { ':TroubleToggle quickfix<cr>', 'quickfix' },
		},

		-- vimtex
		x = {
			name = '+latex',
			c = { ':VimtexCompile<cr>', 'compile' },
			C = { ':VimtexClean<cr>', 'clean-files' },
			d = { ':VimtexClearCache<cr>', 'clear-cache' },
			e = { ':VimtexErrors<cr>', 'errors' },
			i = { ':VimtexImapsList<cr>', 'mappings' },
			l = { ':VimtexLog<cr>', 'compile-log' },
			p = { ':VimtexDocPackage<cr>', 'package-docs' },
			r = { ':VimtexReload<cr>', 'reload' },
			s = { ':VimtexStatus<cr>', 'compile-status' },
			S = { ':VimtexStop<cr>', 'stop-compiling' },
			t = { ':VimtexTocToggle<cr>', 'toggle-toc' },
			v = { ':VimtexView<cr>', 'view' },
		},
	},

	-- new file
	['<leader>,'] = { ':new<cr>', 'new-file' },

	-- finder
	['<leader>.'] = { ':Telescope find_files<cr>', 'find-file' },

	-- dashboard
	['<leader>;'] = { ':Dashboard<cr>', 'dashboard' },

	-- hover
	['<leader>?'] = { ':lua vim.lsp.buf.hover()<cr>', 'lsp-hover' },

	-- autosave
	-- ['<leader>a'] = { ':ASToggle<cr>', 'toggle-autosave' },

	-- terminal toggle all
	['<leader>c'] = { ':ToggleTermToggleAll<cr>', 'toggle-all-term' },

	-- explorer focus
	['<leader>e'] = { ':NvimTreeFocus<cr>', 'explorer' },

	-- trouble
	['<leader>i'] = { ':TroubleToggle<cr>', 'info' },

	-- term
	['<leader>m'] = { ':ToggleTerm<cr>', 'terminal' },

	-- float
	['<leader>M'] = { ':ToggleTerm size=80 direction=float<cr>', 'terminal-float' },

	-- terminal (vertical)
	['<leader>v'] = { ':ToggleTerm size=60 direction=vertical<cr>', 'terminal-vert' },

	-- zen
	['<leader>z'] = { ':ZenMode<cr>', 'zenmode' },
})
