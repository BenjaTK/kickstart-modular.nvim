require("mason").setup()

vim.lsp.enable {
	"lua_ls", "clangd", "pyright", "rust_analyzer", "gdscript", "cssls", "jsonls", "pico8_ls"
}

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { disable = {"lowercase-global"} }
		}
	}
})

vim.lsp.config("pico8_ls", {
	filetypes = { "pico-8", "lua" }
})
