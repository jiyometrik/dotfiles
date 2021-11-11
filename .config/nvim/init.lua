-- Main Files
require('globals')
require('plugins')
require('keymaps')
require('colorschemes')

-- Config Files
require('plugin-config/airline')
require('plugin-config/better-whitespace')
require('plugin-config/nerdcommenter')
require('plugin-config/nerdtree')
require('plugin-config/sneak')
require('plugin-config/ultisnips')
require('plugin-config/vimtex')

-- plugins not needing configuration
require('which-key').setup{}
