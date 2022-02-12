local telescope = require('telescope')
local trouble = require('trouble.providers.telescope')

-- enable telescope searches to be shown in trouble by pressing <C-t>
telescope.setup({
	defaults = {
		mappings = {
			i = { ['<c-t>'] = trouble.open_with_trouble },
			n = { ['<c-t>'] = trouble.open_with_trouble },
		},
	},
})
