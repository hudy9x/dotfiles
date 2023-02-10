local keymap = vim.keymap

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>")
keymap.set("n", "<C-Down>", ":resize +2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Keep highligting previous visual selection after indenting lines
keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")

-- Visual mode custom 
-- keymap.set("n", "<C-Q>", "<C-v>")

-- Text edit
keymap.set('n', '<C-d>', 'yyp')
keymap.set('n', '<A-j>', ':m .+1<CR>')
keymap.set('n', '<A-k>', ':m .-2<CR>')

keymap.set("v", "<A-k>", ":m .-2<CR>==")
keymap.set("v", "<A-j>", ":m .+1<CR>==")
keymap.set("v", "p", '"_dP')

keymap.set('i', '<C-s>', '<Esc>:w<Return>')
keymap.set('n', '<C-s>', ':w<CR>')

-- Terminal
keymap.set('n', '<C-t>', ':terminal<CR>i')
keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Explorer
keymap.set('n', '<Space>e', ':NvimTreeToggle<CR>')

-- Move to right 
keymap.set('i', '<C-l>', '<Esc>la')
-- Move to head or tail
keymap.set('i', '<A-[>', '<Esc><S-I>')
keymap.set('i', '<A-]>', '<Esc><S-A>')

-- Find and replacement
keymap.set('n', '<C-k>', ':s/')
keymap.set('i', '<C-k>', '<Esc>:s/')

keymap.set('n', '<F2>', ':NvimTreeFindFile<CR>')

-- Add comma after "" or ''
keymap.set('n', ',,', [[f'a, ]])
keymap.set('n', ',.', [[f"a, ]])

-- Shortcuts for searching special characters
keymap.set('n', 'f\'\'', [[f"]])
-- Shortcut for replacing Shift + f
keymap.set('n', 'ff', "<S-f>")
-- Shortcut for starting insert mode in an html attributes
keymap.set('n', 'z..', [[f>i<Space><Space><Left>]])
-- Deletes text content inside html tag (if text contains html tag, it not working)
keymap.set('n', 'ditag', [[<S-t>>dt<i]])

keymap.set('n', '<leader>xx', ':TroubleToggle<CR>')

keymap.set('n', 't99', [[f(]])

