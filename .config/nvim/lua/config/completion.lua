local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')
local mapp = require('cmp').mapping

local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0
		and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

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

		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { 'i', 's' }),

		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { 'i', 's' }),
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
