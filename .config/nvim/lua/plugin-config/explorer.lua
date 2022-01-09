vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_git_hl = 1

require("nvim-tree").setup({
	update_cwd = true,
	auto_close = true,
	open_on_tab = false,
	update_to_buf_dir = {
		enable = false,
		auto_open = false,
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
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
		},
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
	root_folder_modifier = ":t",
})
