-- bufferline.nvim --
require('bufferline').setup {
	options = {
		-- Buffer Numbers
		numbers = 'both',

		-- Buffer Formatting
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		tab_size = 18,
		-- separator_style = 'thin',

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

		-- Extra Stuff
		diagnostics = 'coc',
		diagnostics_update_in_insert = true,

		-- icons for diagnostics
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " "
				or (e == "warning" and " " or "" )
				s = s .. n .. sym
			end
			return s
		end,

		-- Other
		enforce_regular_tabs = false, -- don't make tabs the same size

		-- show LSP diagnostics in custom area
		custom_areas = {
			right = function()
				local result = {}
				local error = vim.lsp.diagnostic.get_count(0, [[Error]])
				local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
				local info = vim.lsp.diagnostic.get_count(0, [[Information]])
				local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])

				if error ~= 0 then
					table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
				end

				if warning ~= 0 then
					table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
				end

				if hint ~= 0 then
					table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
				end

				if info ~= 0 then
					table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
				end
				return result
			end,
		}
	}
}
