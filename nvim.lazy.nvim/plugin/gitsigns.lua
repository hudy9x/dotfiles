local status, gitsign = pcall(require, 'gitsigns')
if not status then return end

gitsign.setup {
  -- See `:help gitsigns.txt`
  -- signs = {
  -- 	add = { text = '+' },
  -- 	change = { text = '~' },
  -- 	delete = { text = '_' },
  -- 	topdelete = { text = '‾' },
  -- 	changedelete = { text = '~' },
  -- },
  -- on_attach = function(bufnr)
  -- 	vim.keymap.set('n', '[c', require('gitsigns').prev_hunk, { buffer = bufnr, desc = 'Go to Previous Hunk' })
  -- 	vim.keymap.set('n', ']c', require('gitsigns').next_hunk, { buffer = bufnr, desc = 'Go to Next Hunk' })
  -- 	vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { buffer = bufnr, desc = '[P]review [H]unk' })
  -- end,

}
