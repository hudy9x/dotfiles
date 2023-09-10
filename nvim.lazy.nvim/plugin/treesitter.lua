local stt, treesitter = pcall(require, 'nvim-treesitter.configs')
if not stt then return end

treesitter.setup {
  ensure_installed = {'lua', 'rust', 'tsx', 'typescript', 'vim', 'prisma' },
  highlight = { enable = true },
  indent = { endable = true },
  auto_install = false
}
