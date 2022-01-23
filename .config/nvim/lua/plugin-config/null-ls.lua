local nl = require("null-ls")

-- linting and formatting sources
local sources = {
	-- text manipulation
	-- nl.builtins.formatting.codespell,
	-- nl.builtins.diagnostics.markdownlint,
	-- nl.builtins.diagnostics.proselint,

	-- web
	nl.builtins.formatting.prettier.with({
		disabled_filetypes = { "javascript", "typescript", "json" },
	}), -- no need for js/ts, they have their own formatters in LSP

	-- nl.builtins.diagnostics.eslint, -- builtin tsserver is ok
	-- nl.builtins.diagnostics.stylelint,

	-- python (works with native LSP)
	-- nl.builtins.formatting.black,
	-- nl.builtins.formatting.isort,
	-- nl.builtins.diagnostics.flake8,

	-- c/c++ (works with native LSP)
	-- nl.builtins.formatting.clang_format,
	-- nl.builtins.diagnostics.cppcheck,

	-- go (works with native LSP)
	-- nl.builtins.formatting.gofmt,
	-- nl.builtins.formatting.goimports,
	-- nl.builtins.diagnostics.staticcheck,

	-- lua
	nl.builtins.formatting.stylua,
	-- nl.builtins.diagnostics.luacheck,

	-- latex
	-- nl.builtins.diagnostics.chktex,
	-- nl.builtins.formatting.latexindent,
}

nl.setup({
	sources = sources,
})
