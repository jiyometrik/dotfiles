local g = vim.g
local o = vim.opt

o.list = true
o.listchars:append("space:⋅")
o.listchars:append("eol:↴")

g.indent_blankline_filetype_exclude = { 'help', 'dashboard', 'terminal', 'packer', 'startuptime' }

require('indent_blankline').setup {
	set_conceal = 0,
	show_end_of_line = true,
	space_char_blankline = " ",
	-- show_current_context = true,
	-- show_current_context_start = true,
}
