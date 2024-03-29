local g = vim.g

g.dashboard_default_executive = 'telescope'

g.dashboard_custom_shortcut = {
	last_session = 'SPC b ,',
	find_history = 'SPC f h',
	find_file = 'SPC f f',
	new_file = 'SPC b ;',
	change_colorscheme = 'SPC f .',
	find_word = 'SPC f r',
	book_marks = 'SPC f m',
}

g.dashboard_custom_header = {
	[[          ▀████▀▄▄              ▄█ ]],
	[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	[[   █   █  █      ▄▄           ▄▀   ]],
}

g.dashboard_custom_footer = { 'You know the rules, and so do I.' }
