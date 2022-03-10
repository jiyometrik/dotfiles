local nl = require('null-ls')

-- linting and formatting sources
local sources = {
	nl.builtins.formatting.prettier,
	nl.builtins.formatting.stylua,
	nl.builtins.formatting.autopep8,
}

nl.setup({
	sources = sources,
})
