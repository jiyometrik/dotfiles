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

	-- python (builtin lsp is fine, however i like these better)
	nl.builtins.formatting.yapf,
	-- nl.builtins.formatting.isort,
	-- nl.builtins.diagnostics.flake8,

	-- c/c++ (works already with builtin LSP, does not need to be added)
	-- nl.builtins.formatting.clang_format,
	-- nl.builtins.diagnostics.cppcheck,

	-- go (keeps giving errors)
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
