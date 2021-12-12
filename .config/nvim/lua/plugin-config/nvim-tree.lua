vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_git_hl = 1
require('nvim-tree').setup {
	auto_close = true,
	update_cwd = true,
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
}
