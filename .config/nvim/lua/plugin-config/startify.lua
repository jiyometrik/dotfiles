vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_autoload = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1

vim.cmd [[
	let g:startify_lists = [
		\ { 'type': 'files',     'header': ['   Files'] },
		\ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
		\ { 'type': 'sessions',  'header': ['   Sessions'] },
		\ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
		\ ]
]]
