local treesitter = require("nvim-treesitter")
local langs = {
	"bash",
	"c",
	"diff",
	"html",
	"json",
	"lua",
	"luadoc",
	"markdown",
	"markdown_inline",
	"rust",
	"python",
	"css",
	"html",
	"java"
}

treesitter.setup()
treesitter.install(langs)

vim.api.nvim_create_autocmd("FileType", {
	pattern = langs,

	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
