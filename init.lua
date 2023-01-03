-- configure plugins
require('vo_dat.settings')

-- configure option
require('vo_dat.core.options')

-- configure background
---- require('vo_dat.core.colorscheme')
require('vo_dat.core.colorschemes.nightfox')

-- configure keymap 
require('vo_dat.core.keymaps')

-- configure lualine
require('vo_dat.plugins.lualine')

-- configure buffer line
require('vo_dat.plugins.bufferline')

-- configure lsp
require('vo_dat.plugins.lsp.lsp')


-- configure treesitter
require('vo_dat.plugins.treesitter')

-- configure nvim-tree
require('vo_dat.plugins.nvim-tree')

--configure telescope
require('vo_dat.plugins/telescope')
