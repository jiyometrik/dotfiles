require('nvim-treesitter.configs').setup({
	ensure_installed = 'all',
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true,
		style = 'default',
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = 'gnn',
			node_incremental = 'grn',
			scope_incremental = 'grc',
			node_decremental = 'grm',
		},
	},
	-- rainbow = {
	-- 	enable = true,
	-- 	-- extended_mode = true,
	-- 	max_file_lines = 50000
	-- }
})
