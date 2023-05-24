local keymap = vim.keymap

keymap.set('n', '<C,a>', 'gg<S-v>G')
-- Toggle NeoTree sidebar
keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')

-- Moving around windows using s + h,j,k,l
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sl', '<C-w>l')

-- Split windows
keymap.set('n', 'ss', ':split<cr><C-w>w')
keymap.set('n', 'sv', ':vsplit<cr><C-w>w')

-- Next/Prev tab page
keymap.set('n', '<leader>n', ':BufferLineCycleNext<CR>')
keymap.set('n', '<leader>p', ':BufferLineCyclePrev<CR>')

-- Close all tabs
keymap.set('n', '<leader>ta', [[:tabedit<cr>:BufferLineCloseLeft<cr>:BufferLineCloseRight<cr>]])
-- Keep current tab and close the others
keymap.set('n', '<leader>to', [[:BufferLineCloseLeft<cr>:BufferLineCloseRight<cr>]])

-- Format code
-- this keymap only work if you setting lsp
-- please see /plugin/lspconfig.lua
keymap.set('n', '<leader>fm', ':lua vim.lsp.buf.format()<cr>')

-- Save file
keymap.set('n', '<leader>ss', ':w<cr>')



