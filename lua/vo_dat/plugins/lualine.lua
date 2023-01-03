require('lualine').setup {
  -- There are options that are used in options table. They set behavior of lualine
  -- Values set here are treated as default for other options that work in component level
  -- For example even through icons_enabled is a general component options. You can set icons _enalled to false and icons will be disabled on all component. You can still overwrite defaults set in option table by specifying the options vaslue in component
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = { -- Filetypes to disable lualine for
      statusline = {},     -- only ignores the ft for status line
      winbar = {},         -- only ignores the ft for winbard
    },
    ignore_focus = {},     --If current filetype is in this list it'll
                           -- always be drawn as inactive statusline
                           -- and the lsat window will be drawn as active statusline.
                           -- for example if you don't want statusline of 
                           -- your file tree / sidebar window to have active
                           -- statusline you can add their filetypes here.
    always_divide_middle = true,     -- When set to true, left sections i.e. 'a', 'b' and 'c'
                                     -- can't take over the entire statusline even
                                     -- if neither of 'x', 'y' or 'z' are present.
    globalstatus = false,            -- enable global statusline (have a single statusline
                                     -- at bottom of neovim instead of one for every window).
                                     -- This feature is only avaible in neovim 0.7 and higher.
    refresh = {                      -- sets how often lualine should refreash it's contents (in ms)
      statusline = 1000,             -- the refresh options sets minimum time that lualine tries
      tabline = 1000,                -- to maintain between refresh. It's not guarantied if situation
      winbar = 1000,                 -- arises that lualine needs to erfresh ifself before this time 
    }                                -- it'll do it.
                                    -- Also you can force lualine's refresh by calling refresh function 
  },                                -- like require ('lualine').refresh().

  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filetype'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
