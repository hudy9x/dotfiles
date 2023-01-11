local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "javascript",
    --"php",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
}

-- Troubleshooting for window users 
-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support#troubleshooting
require 'nvim-treesitter.install'.compilers = { "clang" }

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
