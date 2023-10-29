local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then return end

treesitter.setup {
  ensure_installed = { 'lua', 'rust', 'tsx', 'typescript', 'vim', 'prisma' },
  highlight = { enable = true },
  indent = { enable = true },
  auto_install = false,
  context_commentstring = {
    enable = true
  }
}
