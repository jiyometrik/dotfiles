local g = vim.g
local cmd = vim.cmd

g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_git_hl = 1
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

require('nvim-tree').setup({
	update_cwd = true,
	disable_netrw = true,
	hijack_netrw = true,
	update_focused_file = {
		enable = true,
		update_cwd = false,
	},
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
	renderer = {
		indent_markers = { enable = true },
	},
})
