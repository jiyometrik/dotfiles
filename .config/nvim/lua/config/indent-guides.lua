local o = vim.opt
local g = vim.g

o.list = true
o.listchars:append('space:⋅')
-- o.listchars:append('eol:↴')

g.indent_blankline_filetype_exclude = {
	'help',
	'dashboard',
	'terminal',
	'packer',
	'startuptime',
	'Trouble',
	'toggleterm',
	'NvimTree',
}

require('indent_blankline').setup({
	set_conceal = 0,
	space_char_blankline = ' ',
	-- show_end_of_line = true,
	-- show_current_context = true,
	-- show_current_context_start = true,
})
