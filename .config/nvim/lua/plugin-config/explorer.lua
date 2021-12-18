vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_git_hl = 1
-- vim.g.nvim_tree_ignore = { ".git", "node_modules", ".DS_Store", "desktop.ini" }
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
	filters = {
		dotfiles = false,
		custom = {
			".git",
			".DS_Store",
			"Desktop.ini",
			"node_modules",
			-- ".idea",
			-- ".vscode",
			-- "*.sublime-project",
			-- "*.sublime-workspace",
			-- "Thumbs.db",
			-- "ehthumbs.db",
		}
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 500,
	},
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
}
