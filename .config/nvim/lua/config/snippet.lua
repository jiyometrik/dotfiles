-- load snippets from rafamadriz/friendly-snippets (json/vscode format)
require('luasnip.loaders.from_vscode').load()

-- snippets from ~/.config/nvim/lua/snippets directory (snipmate format)
require('luasnip.loaders.from_snipmate').load()
