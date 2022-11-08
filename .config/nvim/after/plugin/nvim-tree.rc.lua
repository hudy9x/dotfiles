local status, nvim_tree = pcall(require, 'nvim-tree');

if (not status) then return end

nvim_tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      }
    }
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  }
})
