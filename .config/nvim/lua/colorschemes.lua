-- I AM THE THEME MAN
local g = vim.g
local o = vim.o
local cmd = vim.cmd

o.termguicolors = true

-- ayu
-- cmd('colorscheme ayu-mirage')

-- catppuccin
--[[ require('catppuccin').setup({
	integrations = {
		lsp_saga = true,
		gitsigns = true,
		telescope = true,
		nvimtree = { enabled = true },
		which_key = true,
		indent_blankline = { enabled = true },
		dashboard = true,
		barbar = true,
		cmp = true,
		ts_rainbow = true,
	},
})
cmd('colorscheme catppuccin') ]]

-- dracula
-- cmd('colorscheme dracula')

-- edge
--[[ g.edge_style = 'aura'
g.edge_enable_italic = 1
g.edge_better_performance = 1
cmd('colorscheme edge') ]]

-- everforest
--[[ g.everforest_background = 'hard'
g.everforest_enable_italic = 1
g.everforest_better_performance = 1
cmd('colorscheme everforest') ]]

-- gruvbox
--[[ g.gruvbox_italic = 1
cmd('colorscheme gruvbox') ]]

-- gruvbox material
--[[ g.gruvbox_material_enable_italic = 1
g.gruvbox_material_better_performance = 1
cmd('colorscheme gruvbox-material') ]]

-- melange
-- cmd('colorscheme melange')

-- nightfox
--[[ local nightfox = require('nightfox')
nightfox.setup({ styles = { comments = 'italic', keywords = 'italic' } })
nightfox.load('duskfox') ]]

-- nord
--[[ g.nord_contrast = true
g.nord_borders = true
cmd('colorscheme nord') ]]

-- rose pine
--[[ g.rose_pine_variant = 'moon'
cmd('colorscheme rose-pine') ]]

-- tokyonight
cmd('colorscheme tokyonight')

-- sonokai
--[[ g.sonokai_style = 'maia'
g.sonokai_enable_italic = 1
g.sonokai_better_performance = 1
cmd('colorscheme sonokai') ]]

-- vscode (idk why it's light by default)
--[[ g.vscode_style = 'dark'
cmd('colorscheme vscode') ]]
