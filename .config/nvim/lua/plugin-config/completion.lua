local cmp = require("cmp")
local lspkind = require("lspkind")
cmp.setup({
	snippet = {
		-- snippet engine to use
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	mapping = {
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- accept currently selected item
	},

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" }, -- luasnip
	}, {
		{ name = "buffer" },
	}),

	formatting = {
		format = lspkind.cmp_format({ -- lspkind fancy icons
			with_text = false,
			before = function(entry, vim_item)
				return vim_item
			end,
		}),
	},
})

cmp.setup.cmdline("/", {
	sources = { { name = "buffer" } },
})

cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path" },
	}, { { name = "cmdline" } }),
})
