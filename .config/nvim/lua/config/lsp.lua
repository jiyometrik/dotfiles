local lsp_installer = require('nvim-lsp-installer')

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
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- NOTE: keymaps are not here, they are defined by which-key

	-- lsp hints as you type
	require('lsp_signature').on_attach()
end

lsp_installer.on_server_ready(function(server)
	-- initialise nvim-cmp to work with all installed LSPs
	local capabilities = require('cmp_nvim_lsp').update_capabilities(
		vim.lsp.protocol.make_client_capabilities()
	)
	local opts = {
		on_attach = on_attach,
		capabilities = capabilities, -- for completion
		-- on_new_config = on_new_config,
		-- on_config_changed = on_config_changed,
		-- on_init = on_init,
		-- on_exit = on_exit,
	}

	-- disable formatting for tsserver (use prettier instead)
	if
		server.name == 'tsserver'
		or server.name == 'html'
		or server.name == 'cssls'
		or server.name == 'jsonls'
		or server.name == 'pyright'
		or server.name == 'pylsp'
		or server.name == 'sumneko_lua'
	then
		opts.on_attach = function(client)
			client.resolved_capabilities.document_formatting = false
			client.resolved_capabilities.document_range_formatting = false
		end
	end

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)

-- icons in the gutter
local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
for type, icon in pairs(signs) do
	local hl = 'DiagnosticSign' .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- format on save
vim.cmd('autocmd BufWritePre * lua vim.lsp.buf.formatting()')
