local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
local on_attach = function(client, bufno)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufno, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufno, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local op = { noremap = false, silent = false }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<cr>", op)
	buf_set_keymap("n", "gd", ":Lspsaga preview_definition<cr>", op)
	buf_set_keymap("n", "K", ":Lspsaga hover_doc<cr>", op)
	buf_set_keymap("n", "gli", ":Lspsaga implement<cr>", op)
	buf_set_keymap("n", "<C-k>", ":Lspsaga signature_help<cr>", op)
	buf_set_keymap("n", "gwa", ":lua vim.lsp.buf.add_workspace_folder()<cr>", op)
	buf_set_keymap("n", "gwr", ":lua vim.lsp.buf.remove_workspace_folder()<cr>", op)
	buf_set_keymap(
		"n",
		"gwl",
		":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
		op
	)
	buf_set_keymap("n", "glD", ":lua vim.lsp.buf.type_definition()<cr>", op)
	buf_set_keymap("n", "gn", ":Lspsaga rename<cr>", op)
	buf_set_keymap("n", "gA", ":Lspsaga code_action<cr>", op)
	buf_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<cr>", op)
	-- buf_set_keymap('n', '<space>e', ':lua vim.diagnostic.open_float()<cr>', op)
	buf_set_keymap("n", "[d", ":Lspsaga diagnostic_jump_next<cr>", op)
	buf_set_keymap("n", "]d", ":Lspsaga diagnostic_jump_prev<cr>", op)
	buf_set_keymap("n", "gq", ":lua vim.diagnostic.setloclist()<cr>", op)
	buf_set_keymap("n", "glf", ":lua vim.lsp.buf.formatting()<cr>", op)
	buf_set_keymap("n", "glF", ":lua vim.lsp.buf.range_formatting()<cr>", op)
	buf_set_keymap("n", "g?", ":Lspsaga lsp_finder<cr>", op)

	require("lsp_signature").on_attach() -- hints as you type
	require("lspkind").init({ -- fancy icons
		with_text = false,
		preset = "codicons",
		symbol_map = {
			Text = "",
			Method = "",
			Function = "",
			Constructor = "",
			Field = "ﰠ",
			Variable = "",
			Class = "ﴯ",
			Interface = "",
			Module = "",
			Property = "ﰠ",
			Unit = "塞",
			Value = "",
			Enum = "",
			Keyword = "",
			Snippet = "",
			Color = "",
			File = "",
			Reference = "",
			Folder = "",
			EnumMember = "",
			Constant = "",
			Struct = "פּ",
			Event = "",
			Operator = "",
			TypeParameter = "",
		},
	})
end

lsp_installer.on_server_ready(function(server)
	-- initialise nvim-cmp to work with all installed LSPs
	local capabilities = require("cmp_nvim_lsp").update_capabilities(
		vim.lsp.protocol.make_client_capabilities()
	)
	local opts = {
		on_attach = on_attach,
		capabilities = capabilities, -- for completion
		-- on_new_config = on_new_config,
		-- on_config_changed = on_config_changed,
		-- on_init = on_init,
		-- on_exit = on_exit,
		-- register nvim-cmp
	}

	-- (optional) Customize the options passed to the server
	-- if server.name == "tsserver" then
	--     opts.root_dir = function() ... end
	-- end

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)

-- icons in the gutter
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- lspsaga scrolling
vim.api.nvim_set_keymap(
	"n",
	"<C-f>",
	':lua require("lspsaga.action").smart_scroll_with_saga(1)<cr>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<C-b>",
	':lua require("lspsaga.action").smart_scroll_with_saga(-1)<cr>',
	{ noremap = true, silent = true }
)

vim.cmd([[ autocmd BufWritePre * lua vim.lsp.buf.formatting_sync() ]]) -- format on save
