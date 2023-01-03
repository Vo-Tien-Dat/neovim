-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup { -- BEGIN_DEFAULT_OPTS
      auto_reload_on_write = true,
      disable_netrw = false,
      hijack_cursor = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      ignore_buffer_on_setup = false,
      open_on_setup = false,
      open_on_setup_file = false,
      sort_by = "name",
      root_dirs = {},
      prefer_startup_root = false,
      sync_root_with_cwd = false,
      reload_on_bufenter = false,
      respect_buf_cwd = false,
      on_attach = "disable",
      remove_keymaps = false,
      select_prompts = false,
      view = {
        -- resize the window on each draw based on the longest line
        adaptive_size = false,
        -- When entering nvim-tree, reposition the view so that the current node is initially centralized
        centralize_selection = false,
        -- width of the window, can be a % string, a number representing columns or a function
        width = 30,
        -- hide the path of the current working directory on top of the tree
        hide_root_folder = true,
        -- side of the tree, can be "left", "right"
        side = "left",
        preserve_window_proportions = false,
        -- print the line number in front of each line.
        number = false,
        relativenumber = false,
        -- show diagnostic sign column. Value can be "YES"
        signcolumn = "yes",
        mappings = {
          -- will use only the provided usermappings and not the default otherwise, extends the defaults with the provided user mappings
          custom_only = false,
          -- a list of keymaps that will extend or override the default keymaps
          -- default: see |nvim-tree-default-mapping|
          list = {
            -- user mappings go here
          },
        },
        float = {
          -- Tree window will be floating
          enable = false,
          -- Close the floating tree window when it loses focus.
          quit_on_focus_loss = true,
          -- Floating window config
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 30,
            height = 30,
            row = 1,
            col = 1,
          },
        },
      },
      -- UI rendering setup 
      renderer = {
        -- appends a trailing slash to folder name 
        add_trailing = false,
        -- compacts folder that only contain a single folder into one mode in the file tree
        group_empty = false,
        -- enable file highlight for git attributes using NvimTreeGit highlight groups.
        -- This can be used with or the icons. Default: false
        highlight_git = false,
        -- Display node whose name strength is wider thatn the width of nvim-tree in floating windows
        full_name = false,
        -- Highlights icons and / or names for opened files
        -- value can be 'none' , 'icon', 'name', 'all'
        highlight_opened_files = "none",
        -- In what format to show root folders. 
        root_folder_label = ":~:s?$?/..?",
        -- Number of spaces for an each tree nesting level. Minium 1
        indent_width = 2,
        -- Display indent markers when folders are open
        indent_markers = {
          -- Display indent markers when folder are open
          enable = false,
          -- Display folder arrows in the same columns as indent marker when using | renderer.icons.show.folder_arrow
          inline_arrows = true,
          -- Icons shown before the file/ directory. Length 1
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        -- Configuration options for icons.
        icons = {
            -- Use the webdev icon colors otherwise NvimTreeFileIcon
          webdev_colors = true,
          -- Place where the git icons will be rendered
          git_placement = "before",
          -- Inserted between icon and filename.
          -- User with caution, it could break rendering if you set an empty string depending on your font.
          padding = " ",
          -- Used as a separator between symlinks' sources and target.
          symlink_arrow = " ➛ ",
          -- Configuration options for showing icon types.
          show = {
            -- Show an icon before the filename. Nvim-web-devicons will be used if avaible
            file = true,
            -- show an icon before the folder name.
            folder = true,
            -- Show a small arrow before the folde node. Arrow will be a part of the node when using | rendering.indent_markers|
            folder_arrow = true,
            -- Show a git status icon. see | redenrer.icons.git_placement|
            git = true,
          },
          -- Configuration options for icon glyphs.
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
      },
      hijack_directories = {
        enable = true,
        auto_open = true,
      },
      update_focused_file = {
        enable = false,
        update_root = false,
        ignore_list = {},
      },
      ignore_ft_on_setup = {},
      system_open = {
        cmd = "",
        args = {},
      },
      diagnostics = {
        enable = false,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      filters = {
        dotfiles = false,
        no_buffer = false,
        custom = {},
        exclude = {},
      },
      filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {},
      },
      git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        timeout = 400,
      },
      -- Configuration for various actions.
      actions = {
        
        use_system_clipboard = true,
        -- vim |current-directory| behaviour
        change_dir = {
          -- Change the working directoy when changing directories in the tree
          enable = true,
          -- Use :cd instead of :lcd when changing directories
          -- Consider that this might cause issues with the |nvim-tree.sync_root_with_cwd| options.
          global = false,
          -- Restrict changing to a directory above the global current working directory.
          restrict_above_cwd = false,
        },
        -- Configuration for expand_all behaviour.
        expand_all = {
          -- Limit the number of folders being explored when exapanding every folders. Avoids hanging neovim when running this action on very large folders.
          max_folder_discovery = 300,
          -- A list of directories that should not be expaneded automatically.
          exclude = {},
        },
        -- Configuration for file_group behaviour.
        file_popup = {
            -- Floating window config for file_popup. See |nvim_open_win| for more details. You shouldn't define "width" and "height" values here. They will be overridden to fit the file_popup content.
          open_win_config = {
            col = 1,
            row = 1,
            relative = "cursor",
            border = "shadow",
            style = "minimal",
          },
        },
        open_file = {
          quit_on_open = false,
          resize_window = true,
          window_picker = {
            enable = true,
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
        remove_file = {
          close_window = true,
        },
      },
      trash = {
        cmd = "gio trash",
        require_confirm = true,
      },
      live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true,
      },
      tab = {
        sync = {
          open = false,
          close = false,
          ignore = {},
        },
      },
      notify = {
        threshold = vim.log.levels.INFO,
      },
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          config = false,
          copy_paste = false,
          dev = false,
          diagnostics = false,
          git = false,
          profile = false,
          watcher = false,
        },
      },
    } -- END_DEFAULT_OPTS
