-- i am the theme man
local g = vim.g
local o = vim.o
local cmd = vim.cmd

o.termguicolors = true
-- o.background = "light"

-- ayu
-- cmd("colorscheme ayu-dark")

-- catppuccin
-- require("catppuccin").setup({
-- 	integrations = {
-- 		cmp = true,
-- 		lsp_saga = true,
-- 		gitsigns = true,
-- 		telescope = true,
-- 		nvimtree = { enabled = true, show_root = true },
-- 		which_key = true,
-- 		indent_blankline = { enabled = true, colored_indent_levels = true },
-- 		dashboard = true,
-- 		barbar = true,
-- 		ts_rainbow = true,
-- 	},
-- })
-- cmd("colorscheme catppuccin")

-- calvera
-- g.calvera_italic_comments = true
-- g.calvera_italic_keywords = true
-- g.calvera_borders = true
-- require("calvera").set()

-- dracula
-- cmd("colorscheme dracula")

-- edge
-- g.edge_style = "neon"
-- g.edge_enable_italic = 1
-- g.edge_better_performance = 1
-- cmd("colorscheme edge")

-- everforest
-- g.everforest_background = "soft" -- "hard" for dark mode
-- g.everforest_enable_italic = 1
-- g.everforest_better_performance = 1
-- cmd("colorscheme everforest")

-- gruvbox
-- g.gruvbox_italic = 1
-- cmd("colorscheme gruvbox")

-- gruvbox material
-- -- g.gruvbox_material_background = "hard"
-- g.gruvbox_material_enable_italic = 1
-- g.gruvbox_material_better_performance = 1
-- cmd("colorscheme gruvbox-material")

-- melange
-- cmd("colorscheme melange")

-- nightfox
-- require("nightfox").setup({
-- 	-- styles = { comments = "italic", keywords = "italic", functions = "italic" },
-- 	styles = { comments = "italic", keywords = "italic" },
-- })
-- require("nightfox").load("nordfox")

-- nord
-- g.nord_contrast = true
-- g.nord_borders = true
-- cmd("colorscheme nord")

-- rose pine
-- -- g.rose_pine_variant = 'moon'
-- cmd("colorscheme rose-pine")

-- tokyodark
-- g.tokyodark_enable_italic_comment = true
-- g.tokyodark_enable_italic = true
-- g.tokyodark_color_gamma = "1.2"
-- cmd("colorscheme tokyodark")

-- tokyonight
g.tokyonight_style = "night"
cmd("colorscheme tokyonight")

-- sonokai
-- g.sonokai_style = "andromeda"
-- g.sonokai_enable_italic = 1
-- g.sonokai_better_performance = 1
-- cmd("colorscheme sonokai")

-- vscode (idk why it's light by default)
-- g.vscode_style = 'dark'
-- cmd('colorscheme vscode')
