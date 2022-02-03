vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_git_hl = 1

-- some defaults not listed, because they don't need to be reiterated
require('nvim-tree').setup({
	update_cwd = true,
	auto_close = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	diagnostics = {
		enable = true,
	},
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
		timeout = 500,
	},
	trash = {
		cmd = 'trash',
		require_confirm = true,
	},
	-- root_folder_modifier = ":t",
})
