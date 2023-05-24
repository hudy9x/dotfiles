local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'thin',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#0d0e19',
      bg = '#0d0e19',
    },
    separator_selected = {
      fg = '#df841b',
    },
    background = {
      fg = '#657b83',
      bg = '#0d0e19'
    },
    buffer_selected = {
      fg = '#c3c3d3',
      bg = '#373354',
      underline = true,
      undercurl = true,
      italic = true
    },
    tab_selected = {
      bg = '#4caf50'
    },
    fill = {
      bg = '#0d0e19'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
