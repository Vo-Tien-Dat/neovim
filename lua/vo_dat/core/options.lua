local opt = vim.opt -- for conscieneness

  

-- line numbers
opt.relativenumber = false
opt.number = true


-- tabs & identation

opt.tabstop = 4
opt.shiftwidth = 4 
opt.expandtab = true
opt.autoindent = true


-- line wrapping
opt.wrap = false
opt.smartcase = true

-- cursor line 
opt.cursorline = true

-- appearance 
opt.background = "dark" 
opt.signcolumn = "yes"


-- backspace
opt.backspace = "indent,eol,start"


-- clipboard


-- split windows
opt.splitright = true
opt.splitbelow = true

-- remove symbol '~'



-- buffer line
opt.termguicolors = true
