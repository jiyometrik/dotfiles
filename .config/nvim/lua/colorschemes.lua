-- I AM THE THEME MAN
local g = vim.g
local o = vim.o
local cmd = vim.cmd

o.termguicolors = true

-- ayu
-- cmd('colorscheme ayu-mirage')

-- dracula
-- cmd('colorscheme dracula')

-- edge
-- g.edge_style = 'aura'
-- g.edge_enable_italic = 1
-- g.edge_better_performance = 1
-- cmd('colorscheme edge')

-- everforest
-- g.everforest_background = 'hard'
-- g.everforest_enable_italic = 1
-- g.everforest_better_performance = 1
-- cmd('colorscheme everforest')

-- gruvbox
-- g.gruvbox_italic = 1
-- cmd('colorscheme gruvbox')

-- gruvbox material
-- g.gruvbox_material_enable_italic = 1
-- g.gruvbox_material_better_performance = 1
-- cmd('colorscheme gruvbox-material')

-- nord
-- g.nord_contrast = true
-- g.nord_borders = true
-- cmd('colorscheme nord')

-- tokyonight
-- cmd('colorscheme tokyonight')

-- sonokai
g.sonokai_style = 'andromeda'
g.sonokai_enable_italic = 1
g.sonokai_better_performance = 1
cmd('colorscheme sonokai')

-- vscode (idk why it's light by default)
-- vim.g.vscode_style = 'dark'
-- vim.cmd('colorscheme vscode')
