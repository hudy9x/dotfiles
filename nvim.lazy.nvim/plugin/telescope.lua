local status, telescope = pcall(require, 'telescope')
if not status then return end

print('called telescope')
local builtin = require('telescope.builtin')

vim.keymap.set('n', ';f', builtin.find_files, {})
vim.keymap.set('n', ';r', builtin.live_grep, {})
vim.keymap.set('n', ';fb', builtin.buffers, {})
