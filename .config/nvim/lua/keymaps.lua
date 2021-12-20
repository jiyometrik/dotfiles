local g = vim.g
local o = vim.o
local wk = require('which-key')

-- leader key
g.mapleader = ' '
o.timeoutlen = 500 -- set timeoutlen so that we have enough time to type out the whole keymap

wk.register({ ['<leader>'] = {
	-- buffers
	b = {
		name = '+buffers',
		['1'] = {'<Cmd>BufferLineGoToBuffer 1<cr>', 'buffer-1'},
		['2'] = {'<Cmd>BufferLineGoToBuffer 2<cr>', 'buffer-2'},
		['3'] = {'<Cmd>BufferLineGoToBuffer 3<cr>', 'buffer-3'},
		['4'] = {'<Cmd>BufferLineGoToBuffer 4<cr>', 'buffer-4'},
		['5'] = {'<Cmd>BufferLineGoToBuffer 5<cr>', 'buffer-5'},
		['6'] = {'<Cmd>BufferLineGoToBuffer 6<cr>', 'buffer-6'},
		['7'] = {'<Cmd>BufferLineGoToBuffer 7<cr>', 'buffer-7'},
		['8'] = {'<Cmd>BufferLineGoToBuffer 8<cr>', 'buffer-8'},
		['9'] = {'<Cmd>BufferLineGoToBuffer 9<cr>', 'buffer-9'},
		a = {'<Cmd>BufferLineSortByName<cr>', 'sort-by-name'},
		b = {'<Cmd>BufferLineMovePrev<cr>', 'move-buffer-back'},
		c = {'<Cmd>BufferLinePick<cr>', 'choose-buffer'},
		d = {'<Cmd>BufferLineSortByDirectory<cr>', 'sort-by-dir'},
		D = {'<Cmd>BufferLineSortByRelativeDirectory<cr>', 'sort-by-relative-dir'},
		e = {'<Cmd>BufferLineSortByExtension<cr>', 'sort-by-ext'},
		f = {'<Cmd>BufferLineMoveNext<cr>', 'move-buffer-forward'},
		l = {'<Cmd>ls<cr>', 'list-buffers'},
		L = {'<Cmd>BLines<cr>', 'lines'},
		n = {'<Cmd>BufferLineCycleNext<cr>', 'next-open-buffer'},
		N = {'<Cmd>bn!<cr>', 'next-buffer-id'},
		p = {'<Cmd>BufferLineCyclePrev<cr>', 'prev-open-buffer'},
		P = {'<Cmd>bp!<cr>', 'prev-buffer-id'},
		s = {'<Cmd>sp ', 'horizontal-split-file', silent = false},
		S = {'<Cmd>sp<cr>', 'horizontal-split'},
		t = {'<Cmd>BufferLineSortByTabs<cr>', 'sort-by-tabs'},
		v = {'<Cmd>vs ', 'vert-split-file', silent = false},
		V = {'<Cmd>vs<cr>', 'vert-split'},
		['['] = {'<Cmd>vert res -5<cr>', 'width-5'},
		[']'] = {'<Cmd>vert res +5<cr>', 'width+5'},
		['+'] = {'<Cmd>res +5<cr>', 'height+5'},
		['-'] = {'<Cmd>res -5<cr>', 'height-5'},
		['/'] = {'<Cmd>Buffers<cr>', 'find-buffer'},
		['.'] = {'<Cmd>SessionSave<cr>', 'save-session'},
		[','] = {'<Cmd>SessionLoad<cr>', 'load-session'},
		[';'] = {'<Cmd>enew<cr>', 'new-buffer'},
	},

	-- nvimtree
	e = {
		name = '+explorer',
		['<space>'] = {'<Cmd>NvimTreeOpen<cr>', 'open'},
		c = {'<Cmd>NvimTreeClose<cr>', 'close'},
		f = {'<Cmd>NvimTreeFocus<cr>', 'focus'},
		i = {'<Cmd>NvimTreeFindFile<cr>', 'find'},
		p = {'<Cmd>NvimTreeClipboard<cr>', 'clipboard'},
		r = {'<Cmd>NvimTreeRefresh<cr>', 'refresh'},
		s = {'<Cmd>NvimTreeResize<cr>', 'resize'},
		t = {'<Cmd>NvimTreeToggle<cr>', 'toggle'}
	},

	-- telescope
	f = {
		name = '+find',
		['?'] = {'<Cmd>Telescope man_pages<cr>', 'manpages'},
		['.'] = {'<Cmd>Telescope colorscheme<cr>', 'colorschemes'},
		['/'] = {'<Cmd>Telescope search_history<cr>', 'search-history'},
		[':'] = {'<Cmd>Telescope command_history<cr>', 'command-history'},
		['"'] = {'<Cmd>Telescope registers<cr>', 'registers'},
		[';'] = {'<Cmd>Telescope autocommands<cr>', 'autocmds'},
		['-'] = {'<Cmd>Telescope spell_suggest<cr>', 'spelling-suggestions'},
		['='] = {'<Cmd>Telescope current_buffer_tags<cr>', 'buf-tags'},
		b = {'<Cmd>Telescope buffers<cr>', 'buffers'},
		B = {'<Cmd>Telescope git_branches<cr>', 'branches'},
		c = {'<Cmd>Telescope git_commits<cr>', 'commits'},
		C = {'<Cmd>Telescope git_bcommits<cr>', 'commits-in-buffer'},
		d = {'<Cmd>Telescope commands<cr>', 'commands'},
		e = {'<Cmd>Telescope file_browser<cr>', 'file-explorer'},
		f = {'<Cmd>Telescope find_files<cr>', 'find-files'},
		F = {'<Cmd>Telescope filetypes<cr>', 'filetypes'},
		g = {'<Cmd>Telescope git_files<cr>', 'git-files'},
		h = {'<Cmd>Telescope oldfiles<cr>', 'file-history'},
		i = {'<Cmd>Telescope highlights<cr>', 'highlights'},
		j = {'<Cmd>Telescope jumplist<cr>', 'jump-list'},
		k = {'<Cmd>Telescope keymaps<cr>', 'keymappings'},
		l = {
			name = '+lsp',
			a = {'<Cmd>Telescope lsp_code_actions<cr>', 'code-actions'},
			A = {'<Cmd>Telescope lsp_range_code_actions<cr>', 'code-actions-range'},
			d = {'<Cmd>Telescope lsp_definitions<cr>', 'definitions'},
			e = {'<Cmd>Telescope diagnostics<cr>', 'diagnostics'},
			i = {'<Cmd>Telescope lsp_implementation<cr>', 'implementations'},
			o = {'<Cmd>Telescope treesitter<cr>', 'treesitter-outline'},
			r = {'<Cmd>Telescope lsp_references<cr>', 'references'},
			s = {'<Cmd>Telescope lsp_document_symbols<cr>', 'doc-symbols'},
			S = {'<Cmd>Telescope lsp_workspace_symbols<cr>', 'workspace-symbols'},
			t = {'<Cmd>Telescope lsp_type_definitions<cr>', 'typedefs'},
			['?'] = {'<Cmd>Telescope lsp_dynamic_workspace_symbols', 'dynamic-workspace-symbols'},
		},
		L = {'<Cmd>Telescope loclist<cr>', 'loclist'},
		m = {'<Cmd>Telescope marks<cr>', 'marks'},
		o = {'<Cmd>Telescope vim_options<cr>', 'options'},
		q = {'<Cmd>Telescope quickfix<cr>', 'quickfixes'},
		r = {'<Cmd>Telescope live_grep<cr>', 'ripgrep'},
		R = {'<Cmd>Telescope grep_string<cr>', 'grep-strings'},
		s = {'<Cmd>Telescope git_status<cr>', 'git-status'},
		S = {'<Cmd>Telescope git_stash<cr>', 'git-stash'},
		t = {'<Cmd>Telescope tags<cr>', 'tags'},
		T = {'<Cmd>Telescope help_tags<cr>', 'helptags'},
		w = {'<Cmd>Windows<cr>', 'windows'},
		z = {'<Cmd>Telescope current_buffer_fuzzy_find', 'fuzzy-find'},
	},

	-- Git
	g = {
		name = '+git',
		a = {':G add ', 'stage', silent = false},
		A = {'<Cmd>G add -A<cr>', 'stage-all'},
		b = {':G branch ', 'branch', silent = false},
		B = {'<Cmd>G branch master<cr>', 'branch-to-master'},
		c = {'<Cmd>G commit -m ""', 'commit', silent = false},
		C = {'<Cmd>Telescope commits<cr>', 'commits'},
		d = {':G rm ', 'delete', silent = false},
		e = {'<Cmd>Telescope git_files<cr>', 'explorer'},
		f = {':G fetch ', 'fetch', silent = false},
		h = {'<Cmd>G reset HEAD~1<cr>', 'reset-last-commit'},
		H = {'<Cmd>Gitsigns toggle_line_hl<cr>', 'line-highlight'},
		i = {'<Cmd>Gitsigns preview_hunk<cr>', 'preview-hunk'},
		j = {'<Cmd>Gitsigns next_hunk<cr>', 'next-hunk'},
		k = {'<Cmd>Gitsigns prev_hunk<cr>', 'prev-hunk'},
		m = {':G merge ', 'merge', silent = false},
		M = {'<Cmd>G merge origin/master<cr>', 'merge-with-origin/master'},
		p = {'<Cmd>G push<cr>', 'push'},
		P = {'<Cmd>G pull<cr>', 'pull'},
		r = {':G reset ', 'reset', silent = false},
		R = {'<Cmd>G restore .<cr>', 'restore-unstaged'},
		s = {'<Cmd>Telescope git_status<cr>', 'status'},
		S = {'<Cmd>G restore -S .<cr>', 'restore-staged'},
		v = {'<Cmd>G revert HEAD~1<cr>', 'revert-last-commit'},
		w = {'<Cmd>Gitsigns toggle_word_diff<cr>', 'word-diff'},
		['>'] = {':GMove ', 'move-current-file', silent = false},
		["'"] = {':GRename ', 'rename-current-file', silent = false},
		['*'] = {'<Cmd>Gitsigns toggle_signs<cr>', 'git-indicators'},
		['#'] = {'<Cmd>Gitsigns toggle_num_hl<cr>', 'num-highlight'},
		['/'] = {'<Cmd>Gitsigns blame_line<cr>', 'line-blame'},
		['+'] = {'<Cmd>Gitsigns stage_hunk<cr>', 'stage-hunk'},
		['-'] = {'<Cmd>Gitsigns unstage_hunk<cr>', 'unstage-hunk'},
		["["] = {'<Cmd>Gitsigns reset_hunk<cr>', 'reset-hunk'},
		["]"] = {'<Cmd>Gitsigns reset_buffer<cr>', 'reset-buffer'},
		['='] = {'<Cmd>Telescope git_stash', 'stash'},
	},

	-- lsp (lspsaga not working right now)
	l = {
		name = '+lsp',
		-- a = {'<Cmd>Lspsaga code_action<cr>', 'codeaction', silent = false},
		-- A = {'<Cmd>Lspsaga range_code_action<cr>', 'codeaction-range', silent = false},
		a = {'<Cmd>lua vim.lsp.buf.code_action()<cr>', 'codeaction', silent = false},
		A = {'<Cmd>lua vim.lsp.buf.range_code_action()<cr>', 'codeaction-range', silent = false},
		d = {'<Cmd>lua vim.lsp.buf.definition()<cr>', 'definition', silent = false},
    D = {'<Cmd>lua vim.lsp.buf.declaration()<cr>', 'declaration', silent = false},
		e = {'<Cmd>lua vim.diagnostic.open_float()<cr>', 'diagnostics', silent = false},
		E = {'<Cmd>Telescope diagnostics<cr>', 'diagnostics-float', silent = false},
		f = {'<Cmd>lua vim.lsp.buf.formatting()<cr>', 'format', silent = false},
		F = {'<Cmd>lua vim.lsp.buf.range_formatting()<cr>', 'format-range', silent = false},
    -- h = {'<Cmd>Lspsaga hover_doc<cr>', 'hover-doc', silent = false},
		h = {'<Cmd>lua vim.lsp.buf.hover()<cr>', 'hover', silent = false},
		H = {'<Cmd>lua vim.lsp.buf.signature_help()<cr>', 'signature-help', silent = false},
		i = {'<Cmd>lua vim.lsp.buf.implementation()<cr>', 'implementation', silent = false},
    -- I = {'<Cmd>Lspsaga signature_help<cr>', 'signature-help', silent = false},
		j = {'<Cmd>lua vim.diagnostic.goto_next()<cr>', 'next-diagnostic', silent = false},
		k = {'<Cmd>lua vim.diagnostic.goto_prev()<cr>', 'prev-diagnostic', silent = false},
		-- J = {'<Cmd>Lspsaga diagnostic_jump_next<cr>', 'next-diagnostic', silent = false},
		-- K = {'<Cmd>Lspsaga diagnostic_jump_prev<cr>', 'prev-diagnostic', silent = false},
    -- l = {'<Cmd>Lspsaga lsp_finder<cr>', 'find-def', silent = false},
    -- p = {'<Cmd>Lspsaga preview_definition<cr>', 'definition-preview', silent = false},
		-- r = {'<Cmd>Lspsaga rename<cr>', 'rename', silent = false},
		r = {'<Cmd>lua vim.lsp.buf.rename()<cr>', 'rename', silent = false},
		R = {'<Cmd>lua vim.lsp.buf.references()<cr>', 'references', silent = false},
    s = {'<Cmd>Telescope treesitter<cr>', 'symbols', silent = false},
		S = {'<Cmd>lua vim.lsp.buf.document_symbol()<cr>', 'document-symbols', silent = false},
		t = {'<Cmd>lua vim.lsp.buf.type_definition()<cr>', 'type-definition', silent = false},
		w = {'<Cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', 'add-workspace-folder', silent = false},
		W = {'<Cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', 'rm-workspace-folder', silent = false},
		x = {'<Cmd>lua vim.diagnostic.set_loclist()<cr>', 'loclist', silent = false},
		['?'] = {'<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', 'workspace-folders', silent = false},
		-- ['/'] = {'<Cmd>lua vim.lsp.buf.find_workspace_folder()<cr>', 'find-workspace-folder', silent = false},
	},

	-- toggle
	t = {
		name = '+toggle',
		c = {'<Cmd>Comment<cr>', 'comment'},
		e = {'<Cmd>NvimTreeToggle<cr>', 'explorer'},
		g = {'<Cmd>Gitsigns toggle_signs<cr>', 'git-indicator'},
		i = {'<Cmd>IndentBlanklineToggle<cr>', 'indent-guide'},
		l = { '<Cmd>set nonu nornu<cr>', 'line-number' },
		t = { '<Cmd>TSToggleAll ', 'treesitter', silent = false},
	},

	-- windows
	w = {
		name = '+windows',
		h = {'<C-w>h', 'left-window'},
		H = {'<C-w>H', 'move-left'},
		i = {'<Cmd>Windows<cr>', 'list-windows'},
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
		c = {'<Cmd>VimtexCompile<cr>', 'compile'},
		C = {'<Cmd>VimtexClean<cr>', 'clean-files'},
		d = {'<Cmd>VimtexClearCache<cr>', 'clear-cache'},
		e = {'<Cmd>VimtexErrors<cr>', 'errors'},
		i = {'<Cmd>VimtexImapsList<cr>', 'mappings'},
		l = {'<Cmd>VimtexLog<cr>', 'compile-log'},
		p = {'<Cmd>VimtexDocPackage<cr>', 'package-docs'},
		r = {'<Cmd>VimtexReload<cr>', 'reload'},
		s = {'<Cmd>VimtexStatus<cr>', 'compile-status'},
		S = {'<Cmd>VimtexStop<cr>', 'stop-compiling'},
		t = {'<Cmd>VimtexTocToggle<cr>', 'toggle-toc'},
		v = {'<Cmd>VimtexView<cr>', 'view'}
	}
},

	-- new file
	['<leader>,'] = {'<Cmd>enew<cr>', 'new-file'},

	-- finder
	['<leader>.'] = {'<Cmd>Files<cr>', 'find-file'},

	-- comment
	['<leader>/'] = {'<Cmd>Comment<cr>', 'comment'},

	-- dashboard
	['<leader>;'] = {'<Cmd>Dashboard<cr>', 'dashboard'},

  -- hover
  ['<leader>?'] = {'<Cmd>lua vim.lsp.buf.hover()<cr>', 'hover', silent = false},

  -- term
  -- ['<leader>$'] = {'<Cmd>Lspsaga open_floaterm<cr>', 'terminal', silent = false},

	-- strip whitespace
	['<leader>s'] = {'<Cmd>StripWhitespace<cr>', 'strip-whitespace'},
})
