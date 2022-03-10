local g = vim.g
local cmd = vim.cmd

g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_git_hl = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_icons = {
	default = '',
	git = {
		deleted = '✗',
		ignored = '◌',
		renamed = '➜',
		staged = '',
		unmerged = '',
		unstaged = '',
		untracked = '★',
	},
}

-- cmd("let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }")

-- some defaults not listed, because they don't need to be reiterated
require('nvim-tree').setup({
	update_cwd = true,
	disable_netrw = true,
	hijack_netrw = true,
	auto_close = true,
	-- update_focused_file = {
	-- 	enable = true,
	-- 	update_cwd = false,
	-- },
	diagnostics = { enable = true },
	filters = {
		dotfiles = false,
		custom = {
			'.git',
			'.DS_Store',
			'Desktop.ini',
			'node_modules',
		},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = vim.o.timeoutlen,
	},
	trash = {
		cmd = 'trash',
		require_confirm = true,
	},
})
