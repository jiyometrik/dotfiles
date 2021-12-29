local g = vim.g
local o = vim.o
local a = vim.api
local wk = require('which-key')

-- leader key
g.mapleader = ' '
o.timeoutlen = 1000 -- set timeoutlen so that we have enough time to type out the whole keymap

-- map j to gj and k to gk so that long lines are easier to navigate
-- a.nvim_set_keymap('n', 'j', 'gj', {silent = true})
-- a.nvim_set_keymap('n', 'k', 'gk', {silent = true})
-- a.nvim_set_keymap('v', 'j', 'gj', {silent = true})
-- a.nvim_set_keymap('v', 'k', 'gk', {silent = true})

wk.register({ ['<leader>'] = {
	-- buffers
	b = {
		name = '+buffers',
		['1'] = {'<Cmd>BufferLineGoToBuffer 1<CR>', 'buffer-1'},
		['2'] = {'<Cmd>BufferLineGoToBuffer 2<CR>', 'buffer-2'},
		['3'] = {'<Cmd>BufferLineGoToBuffer 3<CR>', 'buffer-3'},
		['4'] = {'<Cmd>BufferLineGoToBuffer 4<CR>', 'buffer-4'},
		['5'] = {'<Cmd>BufferLineGoToBuffer 5<CR>', 'buffer-5'},
		['6'] = {'<Cmd>BufferLineGoToBuffer 6<CR>', 'buffer-6'},
		['7'] = {'<Cmd>BufferLineGoToBuffer 7<CR>', 'buffer-7'},
		['8'] = {'<Cmd>BufferLineGoToBuffer 8<CR>', 'buffer-8'},
		['9'] = {'<Cmd>BufferLineGoToBuffer 9<CR>', 'buffer-9'},
		a = {'<Cmd>BufferLineSortByName<CR>', 'sort-by-name'},
		b = {'<Cmd>BufferLineMovePrev<CR>', 'move-buffer-back'},
		c = {'<Cmd>BufferLinePick<CR>', 'choose-buffer'},
		d = {'<Cmd>BufferLineSortByDirectory<CR>', 'sort-by-dir'},
		D = {'<Cmd>BufferLineSortByRelativeDirectory<CR>', 'sort-by-relative-dir'},
		e = {'<Cmd>BufferLineSortByExtension<CR>', 'sort-by-ext'},
		f = {'<Cmd>BufferLineMoveNext<CR>', 'move-buffer-forward'},
		l = {'<Cmd>ls<CR>', 'list-buffers'},
		L = {'<Cmd>BLines<CR>', 'lines'},
		n = {'<Cmd>BufferLineCycleNext<CR>', 'next-open-buffer'},
		N = {'<Cmd>bn!<CR>', 'next-buffer-id'},
		p = {'<Cmd>BufferLineCyclePrev<CR>', 'prev-open-buffer'},
		P = {'<Cmd>bp!<CR>', 'prev-buffer-id'},
		s = {'<Cmd>sp ', 'horizontal-split-file', silent = false},
		S = {'<Cmd>sp<CR>', 'horizontal-split'},
		t = {'<Cmd>BufferLineSortByTabs<CR>', 'sort-by-tabs'},
		v = {'<Cmd>vs ', 'vert-split-file', silent = false},
		V = {'<Cmd>vs<CR>', 'vert-split'},
		['['] = {'<Cmd>vert res -5<CR>', 'width-5'},
		[']'] = {'<Cmd>vert res +5<CR>', 'width+5'},
		['+'] = {'<Cmd>res +5<CR>', 'height+5'},
		['-'] = {'<Cmd>res -5<CR>', 'height-5'},
		['/'] = {'<Cmd>Buffers<CR>', 'find-buffer'},
		['.'] = {'<Cmd>SessionSave<CR>', 'save-session'},
		[','] = {'<Cmd>SessionLoad<CR>', 'load-session'},
		[';'] = {'<Cmd>enew<CR>', 'new-buffer'},
	},

	-- nvimtree
	e = {
		name = '+explorer',
		['<space>'] = {'<Cmd>NvimTreeOpen<CR>', 'open'},
		c = {'<Cmd>NvimTreeClose<CR>', 'close'},
		f = {'<Cmd>NvimTreeFocus<CR>', 'focus'},
		i = {'<Cmd>NvimTreeFindFile<CR>', 'find'},
		p = {'<Cmd>NvimTreeClipboard<CR>', 'clipboard'},
		r = {'<Cmd>NvimTreeRefresh<CR>', 'refresh'},
		s = {'<Cmd>NvimTreeResize<CR>', 'resize'},
		t = {'<Cmd>NvimTreeToggle<CR>', 'toggle'}
	},

	-- telescope
	f = {
		name = '+find',
		['?'] = {'<Cmd>Telescope man_pages<CR>', 'manpages'},
		['.'] = {'<Cmd>Telescope colorscheme<CR>', 'colorschemes'},
		['/'] = {'<Cmd>Telescope search_history<CR>', 'search-history'},
		[':'] = {'<Cmd>Telescope command_history<CR>', 'command-history'},
		['"'] = {'<Cmd>Telescope registers<CR>', 'registers'},
		[';'] = {'<Cmd>Telescope autocommands<CR>', 'autocmds'},
		['-'] = {'<Cmd>Telescope spell_suggest<CR>', 'spelling-suggestions'},
		['='] = {'<Cmd>Telescope current_buffer_tags<CR>', 'buf-tags'},
		b = {'<Cmd>Telescope buffers<CR>', 'buffers'},
		B = {'<Cmd>Telescope git_branches<CR>', 'branches'},
		c = {'<Cmd>Telescope git_commits<CR>', 'commits'},
		C = {'<Cmd>Telescope git_bcommits<CR>', 'commits-in-buffer'},
		d = {'<Cmd>Telescope commands<CR>', 'commands'},
		e = {'<Cmd>Telescope file_browser<CR>', 'file-explorer'},
		f = {'<Cmd>Telescope find_files<CR>', 'find-files'},
		F = {'<Cmd>Telescope filetypes<CR>', 'filetypes'},
		g = {'<Cmd>Telescope git_files<CR>', 'git-files'},
		h = {'<Cmd>Telescope oldfiles<CR>', 'file-history'},
		i = {'<Cmd>Telescope highlights<CR>', 'highlights'},
		j = {'<Cmd>Telescope jumplist<CR>', 'jump-list'},
		k = {'<Cmd>Telescope keymaps<CR>', 'keymappings'},
		l = {
			name = '+lsp',
			a = {'<Cmd>Telescope lsp_code_actions<CR>', 'code-actions'},
			A = {'<Cmd>Telescope lsp_range_code_actions<CR>', 'code-actions-range'},
			d = {'<Cmd>Telescope lsp_definitions<CR>', 'definitions'},
			e = {'<Cmd>Telescope diagnostics<CR>', 'diagnostics'},
			i = {'<Cmd>Telescope lsp_implementation<CR>', 'implementations'},
			o = {'<Cmd>Telescope treesitter<CR>', 'treesitter-outline'},
			r = {'<Cmd>Telescope lsp_references<CR>', 'references'},
			s = {'<Cmd>Telescope lsp_document_symbols<CR>', 'doc-symbols'},
			S = {'<Cmd>Telescope lsp_workspace_symbols<CR>', 'workspace-symbols'},
			t = {'<Cmd>Telescope lsp_type_definitions<CR>', 'typedefs'},
			['?'] = {'<Cmd>Telescope lsp_dynamic_workspace_symbols', 'dynamic-workspace-symbols'},
		},
		L = {'<Cmd>Telescope loclist<CR>', 'loclist'},
		m = {'<Cmd>Telescope marks<CR>', 'marks'},
		o = {'<Cmd>Telescope vim_options<CR>', 'options'},
		q = {'<Cmd>Telescope quickfix<CR>', 'quickfixes'},
		r = {'<Cmd>Telescope live_grep<CR>', 'ripgrep'},
		R = {'<Cmd>Telescope grep_string<CR>', 'grep-strings'},
		s = {'<Cmd>Telescope git_status<CR>', 'git-status'},
		S = {'<Cmd>Telescope git_stash<CR>', 'git-stash'},
		t = {'<Cmd>Telescope tags<CR>', 'tags'},
		T = {'<Cmd>Telescope help_tags<CR>', 'helptags'},
		w = {'<Cmd>Windows<CR>', 'windows'},
		z = {'<Cmd>Telescope current_buffer_fuzzy_find<CR>', 'fuzzy-find'},
	},

	-- Git
	g = {
		name = '+git',
		a = {':G add ', 'stage', silent = false},
		A = {'<Cmd>G add -A<CR>', 'stage-all'},
		b = {':G branch ', 'branch', silent = false},
		B = {'<Cmd>G branch master<CR>', 'branch-to-master'},
		c = {'<Cmd>G commit -m ""', 'commit', silent = false},
		C = {'<Cmd>Telescope commits<CR>', 'commits'},
		d = {':G rm ', 'delete', silent = false},
		e = {'<Cmd>Telescope git_files<CR>', 'explorer'},
		f = {':G fetch ', 'fetch', silent = false},
		h = {'<Cmd>G reset HEAD~1<CR>', 'reset-last-commit'},
		H = {'<Cmd>Gitsigns toggle_line_hl<CR>', 'line-highlight'},
		i = {'<Cmd>Gitsigns preview_hunk<CR>', 'preview-hunk'},
		j = {'<Cmd>Gitsigns next_hunk<CR>', 'next-hunk'},
		k = {'<Cmd>Gitsigns prev_hunk<CR>', 'prev-hunk'},
		m = {':G merge ', 'merge', silent = false},
		M = {'<Cmd>G merge origin/master<CR>', 'merge-with-origin/master'},
		p = {'<Cmd>G push<CR>', 'push'},
		P = {'<Cmd>G pull<CR>', 'pull'},
		r = {':G reset ', 'reset', silent = false},
		R = {'<Cmd>G restore .<CR>', 'restore-unstaged'},
		s = {'<Cmd>Telescope git_status<CR>', 'status'},
		S = {'<Cmd>G restore -S .<CR>', 'restore-staged'},
		v = {'<Cmd>G revert HEAD~1<CR>', 'revert-last-commit'},
		w = {'<Cmd>Gitsigns toggle_word_diff<CR>', 'word-diff'},
		['>'] = {':GMove ', 'move-current-file', silent = false},
		["'"] = {':GRename ', 'rename-current-file', silent = false},
		['*'] = {'<Cmd>Gitsigns toggle_signs<CR>', 'git-indicators'},
		['#'] = {'<Cmd>Gitsigns toggle_num_hl<CR>', 'num-highlight'},
		['/'] = {'<Cmd>Gitsigns blame_line<CR>', 'line-blame'},
		['+'] = {'<Cmd>Gitsigns stage_hunk<CR>', 'stage-hunk'},
		['-'] = {'<Cmd>Gitsigns unstage_hunk<CR>', 'unstage-hunk'},
		["["] = {'<Cmd>Gitsigns reset_hunk<CR>', 'reset-hunk'},
		["]"] = {'<Cmd>Gitsigns reset_buffer<CR>', 'reset-buffer'},
		['='] = {'<Cmd>Telescope git_stash', 'stash'},
	},

	-- lsp (lspsaga not working right now)
	l = {
		name = '+lsp',
		a = {'<Cmd>Lspsaga code_action<CR>', 'codeaction', silent = false},
		A = {'<Cmd>Lspsaga range_code_action<CR>', 'codeaction-range', silent = false},
		c = {'<Cmd>Lspsaga show_line_diagnostics<CR>', 'line-diagnostics', silent = false},
		C = {'<Cmd>Lspsaga show_cursor_diagnostics<CR>', 'current-diagnostics', silent = false},
		d = {'<Cmd>Lspsaga preview_definition<CR>', 'definition', silent = false},
    D = {'<Cmd>lua vim.lsp.buf.declaration()<CR>', 'declaration', silent = false},
		e = {'<Cmd>lua vim.diagnostic.open_float()<CR>', 'diagnostics', silent = false},
		-- e = {'<Cmd>lua vim.diagnostic.set_loclist()<CR>', 'diagnostics', silent = false},
		E = {'<Cmd>Telescope diagnostics<CR>', 'diagnostics-float', silent = false},
		f = {'<Cmd>lua vim.lsp.buf.formatting()<CR>', 'format', silent = false},
		F = {'<Cmd>lua vim.lsp.buf.range_formatting()<CR>', 'format-range', silent = false},
    h = {'<Cmd>Lspsaga hover_doc<CR>', 'hover-doc', silent = false},
		H = {'<Cmd>Lspsaga signature_help<CR>', 'signature-help', silent = false},
		i = {'<Cmd>Lspsaga implement<CR>', 'implementation', silent = false},
		j = {'<Cmd>Lspsaga diagnostic_jump_next<CR>', 'next-diagnostic', silent = false},
		k = {'<Cmd>Lspsaga diagnostic_jump_prev<CR>', 'prev-diagnostic', silent = false},
    l = {'<Cmd>Lspsaga lsp_finder<CR>', 'finder', silent = false},
		r = {'<Cmd>Lspsaga rename<CR>', 'rename', silent = false},
		R = {'<Cmd>lua vim.lsp.buf.references()<CR>', 'references', silent = false},
    s = {'<Cmd>Telescope treesitter<CR>', 'symbols', silent = false},
		S = {'<Cmd>lua vim.lsp.buf.document_symbol()<CR>', 'document-symbols', silent = false},
		t = {'<Cmd>lua vim.lsp.buf.type_definition()<CR>', 'type-definition', silent = false},
		w = {'<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', 'add-workspace-folder', silent = false},
		W = {'<Cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', 'rm-workspace-folder', silent = false},
		['?'] = {'<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', 'workspace-folders', silent = false},
	},

	-- toggle
	t = {
		name = '+toggle',
		c = {'<Cmd>Comment<CR>', 'comment'},
		e = {'<Cmd>NvimTreeToggle<CR>', 'explorer'},
		g = {'<Cmd>Gitsigns toggle_signs<CR>', 'git-indicator'},
		i = {'<Cmd>IndentBlanklineToggle<CR>', 'indent-guide'},
		l = { '<Cmd>set nonu nornu<CR>', 'line-number' },
		t = { '<Cmd>TSToggleAll ', 'treesitter', silent = false},
	},

	-- windows
	w = {
		name = '+windows',
		h = {'<C-w>h', 'left-window'},
		H = {'<C-w>H', 'move-left'},
		i = {'<Cmd>Windows<CR>', 'list-windows'},
		j = {'<C-w>j', 'bottom-window'},
		J = {'<C-w>J', 'move-down'},
		k = {'<C-w>k', 'top-window'},
		K = {'<C-w>K', 'move-up'},
		l = {'<C-w>l', 'right-window'},
		L = {'<C-w>L', 'move-right'},
		q = {'<C-w>q', 'quit-window'},
		s = {'<C-w>s', 'horizontal-split'},
		v = {'<C-w>v', 'vert-split'},
		w = {'<C-w>w', 'switch-windows'},
		x = {'<C-w>x', 'exchange-windows'},
		['='] = {'<C-w>=', 'make-all-windows-equal-sized'}
	},

	-- vimtex
	x = {
		name = '+vimtex',
		c = {'<Cmd>VimtexCompile<CR>', 'compile'},
		C = {'<Cmd>VimtexClean<CR>', 'clean-files'},
		d = {'<Cmd>VimtexClearCache<CR>', 'clear-cache'},
		e = {'<Cmd>VimtexErrors<CR>', 'errors'},
		i = {'<Cmd>VimtexImapsList<CR>', 'mappings'},
		l = {'<Cmd>VimtexLog<CR>', 'compile-log'},
		p = {'<Cmd>VimtexDocPackage<CR>', 'package-docs'},
		r = {'<Cmd>VimtexReload<CR>', 'reload'},
		s = {'<Cmd>VimtexStatus<CR>', 'compile-status'},
		S = {'<Cmd>VimtexStop<CR>', 'stop-compiling'},
		t = {'<Cmd>VimtexTocToggle<CR>', 'toggle-toc'},
		v = {'<Cmd>VimtexView<CR>', 'view'}
	}
},

	-- new file
	['<leader>,'] = {'<Cmd>enew<CR>', 'new-file'},

	-- finder
	['<leader>.'] = {'<Cmd>Telescope find_files<CR>', 'find-file'},

	-- comment
	['<leader>/'] = {'<Cmd>Comment<CR>', 'comment'},

	-- dashboard
	['<leader>;'] = {'<Cmd>Dashboard<CR>', 'dashboard'},

  -- hover
  ['<leader>?'] = {'<Cmd>Lspsaga hover_doc<CR>', 'hover', silent = false},

  -- term
  ['<leader>m'] = {'<Cmd>Lspsaga open_floaterm<CR>', 'terminal', silent = false},

	-- strip whitespace
	['<leader>s'] = {'<Cmd>StripWhitespace<CR>', 'strip-whitespace'},

	-- zen
	['<leader>z'] = {'<Cmd>ZenMode<CR>', 'zenmode'},
})
