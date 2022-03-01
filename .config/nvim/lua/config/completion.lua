local cmp = require('cmp')
local lspkind = require('lspkind')
local mapp = require('cmp').mapping

cmp.setup({
	snippet = {
		-- snippet engine to use
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},

	mapping = {
		['<C-b>'] = mapp(mapp.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = mapp(mapp.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = mapp(mapp.complete(), { 'i', 'c' }),
		['<C-e>'] = mapp({
			i = mapp.abort(),
			c = mapp.close(),
		}),
		['<CR>'] = mapp.confirm({ select = true }), -- accept currently selected item
	},

	sources = cmp.config.sources({
		-- original lsp
		{ name = 'nvim_lsp' },

		-- snippets
		{ name = 'luasnip' },
	}, {
		-- words in the buffer
		-- { name = 'buffer' },
	}),

	formatting = {
		-- fancy icons (onsails/lspkind-nvim)
		format = lspkind.cmp_format({
			mode = 'symbol',
			maxwidth = 50,
			before = function(entry, vim_item)
				return vim_item
			end,
		}),
	},
})

cmp.setup.cmdline('/', {
	sources = { { name = 'buffer' } },
})

cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' },
	}, { { name = 'cmdline' } }),
})
