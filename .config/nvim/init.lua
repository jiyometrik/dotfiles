require('options')
require('plugins')
require('themes')
require('keymaps')

-- config files (non-lua plugins)
if vim.bo.filetype == 'tex' or vim.bo.filetype == 'latex' then
	require('config.vimtex')
end
