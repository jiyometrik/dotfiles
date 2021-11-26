local o = vim.opt
o.list = true
o.listchars:append("space:⋅")
o.listchars:append("eol:↴")

require('indent_blankline').setup {
	-- concealcursor = 'inc',
	-- conceal_level = 0,
	set_conceal = 0,
	-- show_current_context = true,
	-- show_current_context_start = true,
	show_end_of_line = true,
	space_char_blankline = " ",
}
