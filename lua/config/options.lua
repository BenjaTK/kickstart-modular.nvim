vim.o.clipboard = "unnamedplus"

vim.o.ttyfast = true

-- Files
vim.o.swapfile = false
vim.o.undofile = true
vim.o.autoread = true
vim.o.autowrite = false

-- Appearance
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.wrap = false
vim.g.have_nerd_font = true
vim.o.showmode = false
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.conceallevel = 0
vim.o.concealcursor = ""
vim.o.winborder = "single"
vim.o.autoindent = false
vim.o.smartindent = false
vim.o.breakindent = true
vim.o.linebreak = true

vim.o.foldmethod = "expr"
vim.o.foldlevel = 99
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Completion
vim.o.completeopt = "menuone"

vim.diagnostic.config {
	virtual_text = true
}


