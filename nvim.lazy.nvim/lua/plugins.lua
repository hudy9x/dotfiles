local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local theme = require('theme')

-- PLugins load
require("lazy").setup({  
	theme,
	-- Auto pairs {}, '', "", ()
	{
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
	},
	{
		"windwp/nvim-autopairs",
		dependencies = { "hrsh7th/nvim-cmp" },
		config = function()
			require("nvim-autopairs").setup {}
		end
	},

	-- Tab pages
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons'
	},

	-- Browse files/ folder
	-- It works well with bufferline
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		}
	},

	-- Status line
	{
		'nvim-lualine/lualine.nvim',
		opts = {
			options = {
				icons_enabled = false,
				theme = 'tokyonight',
				component_separators = '|',
				section_separators = '',
			}
		}
	},

	-- Add indentiation guides even on blank lines
	{
		'lukas-reineke/indent-blankline.nvim',
	  opts = {
			char = '|',
			show_trailing_blankline_indent = false,
			-- context highlighting
			show_current_context = true,
			show_current_context_start = true,
		}
	},

	-- "gc" to comment visual regions/lines
	-- Press `gcc` to toggle comments
	{ 'numToStr/Comment.nvim', opts = {} },

	-- fuzzy finder (files, lsp, etc)
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim'
		}
	},

	-- LSP configuration & plugins
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'williamboman/mason.nvim', config = true},
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			{ 'j-hui/fidget.nvim', opts = {} }
		}
	}

})
