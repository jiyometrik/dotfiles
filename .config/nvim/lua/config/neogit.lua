require('neogit').setup({
	commit_popup = {
		kind = 'split',
	},
	kind = 'split',
	signs = {
		section = { '', '' },
		item = { '', '' },
		hunk = { '', '' },
	},
	integrations = {
		diffview = true,
	},
})
