-- i am the theme man
local g = vim.g
local o = vim.o
local cmd = vim.cmd

o.termguicolors = true
-- o.background = 'light'

-- catppuccin
require('catppuccin').setup({
	integrations = {
		cmp = true,
		lsp_saga = true,
		lsp_trouble = true,
		gitsigns = true,
		telescope = true,
		nvimtree = { enabled = true, show_root = true },
		which_key = true,
		indent_blankline = { enabled = true, colored_indent_levels = true },
		dashboard = true,
		barbar = true,
		ts_rainbow = true,
		hop = true,
		-- lightspeed = true,
		neogit = true,
	},
})
cmd('colorscheme catppuccin')

-- dracula
-- cmd('colorscheme dracula')

-- edge
-- g.edge_better_performance = 1
-- g.edge_style = 'neon'
-- g.edge_enable_italic = 1
-- cmd('colorscheme edge')

-- everforest
-- g.everforest_background = 'hard'
-- g.everforest_enable_italic = 1
-- g.everforest_better_performance = 1
-- cmd('colorscheme everforest')

-- gruvbox material
-- g.gruvbox_material_background = 'hard'
-- g.gruvbox_material_enable_italic = 1
-- g.gruvbox_material_better_performance = 1
-- cmd('colorscheme gruvbox-material')

-- melange
-- cmd('colorscheme melange')

-- nightfox
-- require('nightfox').setup({
-- 	styles = { comments = 'italic', keywords = 'italic' },
-- })
-- cmd('colorscheme nightfox')

-- nord
-- g.nord_contrast = true
-- g.nord_borders = true
-- cmd('colorscheme nord')

-- rose pine
-- g.rose_pine_variant = 'moon'
-- cmd('colorscheme rose-pine')

-- tokyonight
-- g.tokyonight_style = 'night'
-- cmd('colorscheme tokyonight')

-- sonokai
-- g.sonokai_style = 'maia'
-- g.sonokai_enable_italic = 1
-- g.sonokai_better_performance = 1
-- cmd('colorscheme sonokai')

-- vscode (idk why it's light by default)
-- g.vscode_style = 'dark'
-- cmd('colorscheme vscode')
