-- bufferline.nvim

vim.opt.termguicolors = true
require('bufferline').setup {
	options = {
		-- Buffer Numbers
		numbers = 'both',

		-- Buffer Formatting
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		tab_size = 18,
		separator_style = 'thick',

		-- Closing Buffers
		close_command = "bd! %d",
		left_mouse_command = "b %d",
		middle_mouse_command = nil, right_mouse_command = "bd! %d",
		-- Icons
		indicator_icon = '▎',
		buffer_close_icon = '',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',

		diagnostics = 'nvim_lsp',
		diagnostics_update_in_insert = true,

		-- show lsp diagnostics in custom area
		custom_areas = {
			right = function()
				local result = {}
				local error = vim.lsp.diagnostic.get_count(0, [[Error]])
				local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
				local info = vim.lsp.diagnostic.get_count(0, [[Information]])
				local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])

				if error ~= 0 then
					table.insert(result, {text = "  " .. error, guifg = "#e67e80"})
				end

				if warning ~= 0 then
					table.insert(result, {text = "  " .. warning, guifg = "#dbbc7f"})
				end

				if hint ~= 0 then
					table.insert(result, {text = "  " .. hint, guifg = "#a7c080"})
				end

				if info ~= 0 then
					table.insert(result, {text = "  " .. info, guifg = "#7fbbb3"})
				end
				return result
			end,
		}
	}
}
