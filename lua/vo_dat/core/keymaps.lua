function map(mode, lhs, rhs, opts)
    local options  = { noremap = true}
    if opts then 
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------------- MODES --------------------------------------------------------------------
----- normal_mode = "n" 
----- insert_mode = "i": use to write text
----- visual_mode = "v"
----- visual_block_mode = "x"
----- term_mode = "t"
----- command_mode = "c"
----- press v-i-w to select one word
----- press shift-v to change mode visual and select one line
----- press 'g-g-Shift-V-Shift-g' to select to editor
-------------------------- NAVIGATION: phím điều hướng ---------------------------------------------

-- press w to move next word, active: normal_mode
-- press b to move previous word, active: normal_mode
-- press 0 or home to move in the top of line, active: normal_mode
-- press $ or end to move in the end of line, active: normal_mode
-- press gg to move in the top of editor, active: normal_mode
-- press Shift + g to move in the end of editor, active: normal_mode

-------------------------- COPY AND PASTE ------------------------------------


-- copy to clipboard
map('v', 'y', '"+y')

-- paste to clipboard
map('n', 'p', '"+p')
map('v', 'p', '"+p')
--------------------------- SEARCH ------------------------------------------- 
-- press /<word> to search word
-- press Shift + 8 to search word on the position pointer
-- press n to move pointer to next searching result
-- press N to move pointer to previous searching result
-- press %s/<old_word>/<new-word> to change all text 
---------------------------- OPEN AND CLOSE FILE ----------------------------
-- press ':q' to quit editor
-- press ':bd' to quit buffer line
-- press ':wq' to save and quit
-- press ':q!' to save without exit editor
-- press ':vs <name_file>' to open file and split the current window
-- press Ctrl + w and arrow key to move split window 

--------------------------- BUFFERLINE ---------------------------------------
-- active next bufferline
map('n', '<C-j>', '<cmd>:BufferLineCyclePrev<cr>')

-- active prev bufferline
map('n', '<C-k>', '<cmd>:BufferLineCycleNext<cr>')

-- move next bufferline
map('n', '<C-h>', '<cmd>:BufferLineMovePrev<cr>')

-- move previous bufferline
map('n', '<C-l>', '<cmd>:BufferLineMoveNext<cr>')

-- close current tab
map('n', '<S-w>', '<cmd>:BufferLineCloseCurrent<cr>')

-------------------------- NVIM-TREE ----------------------------------------
-- configure NvimTree keymap
map('n', '<C-b>', '<cmd>:NvimTreeToggle<cr>')

-- configure resize NvimTree
map('n', '<S-l>', '<cmd>:NvimTreeResize +5<cr>')
map('n', '<S-h>', '<cmd>:NvimTreeResize -5<cr>')
