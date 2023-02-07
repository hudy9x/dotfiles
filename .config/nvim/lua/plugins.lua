local status, packer = pcall(require, 'packer')
if (not status) then
  print("packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim' -- Theme nightfox
  use 'nvim-lualine/lualine.nvim' -- Status line
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'kyazdani42/nvim-web-devicons' -- File icons 
  use 'kyazdani42/nvim-tree.lua' -- File explorer
  use 'glepnir/lspsaga.nvim' --LSP UIs

  use 'onsails/lspkind-nvim' --vscode-like pictograms
  use 'L3MON4D3/LuaSnip' -- Snippet engine\  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets" -- Friendly snippet

  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'numToStr/Comment.nvim' -- Smart and Powerful commenting plugin for neovim

  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons"
  }

end)
