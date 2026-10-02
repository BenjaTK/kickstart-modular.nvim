local function gh(repo) return "https://github.com/" .. repo end

-- Plugins
vim.loader.enable()
vim.pack.add {
	{ src = gh "nvim-mini/mini.nvim" },
	-- Appearance
	{ src = gh "goolord/alpha-nvim" },
	{ src = gh "uZer/pywal16.nvim" },
	{ src = gh "norcalli/nvim-colorizer.lua" },
	{ src = gh "nvim-tree/nvim-web-devicons" },
	-- Navigation/Editing
	{ src = gh "nvim-neo-tree/neo-tree.nvim" },
	{ src = gh "MunifTanjim/nui.nvim" },
	{ src = gh "nvim-lua/plenary.nvim" },
	{ src = gh "christoomey/vim-tmux-navigator" },
	{ src = gh "ibhagwan/fzf-lua" },
	{ src = gh "romgrk/barbar.nvim" },
	-- LSP, Syntax Highlight, Formatting
	{ src = gh "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ src = gh "neovim/nvim-lspconfig" },
	{ src = gh "mason-org/mason.nvim" },
	{ src = gh "mfussenegger/nvim-lint" },
	{ src = gh "Saghen/blink.cmp", version = vim.version.range("1.*") },
	-- Misc
	{ src = gh "folke/which-key.nvim" },
}

-- Imports
require "plugins.neo-tree"
require "plugins.pywal"
require "plugins.mini"
require "plugins.which-key"
require "plugins.treesitter"
require "plugins.alpha"
require "plugins.lsp"
require "plugins.colorizer"
require "plugins.nvim-web-devicons"
require "plugins.barbar"
require "plugins.nvim-lint"
require "plugins.blink"

require "config.options"
require "config.mappings"
require "config.autocmd"
