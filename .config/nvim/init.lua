-- Main Files
require('globals')
require('plugins')
require('keymaps')
require('colorschemes')

-- Config Files
require('plugin-config/airline')
require('plugin-config/better-whitespace')
require('plugin-config/indent-blankline')
require('plugin-config/nerdcommenter')
-- require('plugin-config/nerdtree') -- not in use currently
-- require('plugin-config/sneak') -- don't use very often so kinda obsolete
require('plugin-config/startify')
require('plugin-config/ultisnips')
require('plugin-config/vimtex')

-- plugins not needing configuration
require('which-key').setup{}
