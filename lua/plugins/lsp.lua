require("mason").setup()

vim.lsp.enable {
	"lua_ls", "clangd", "pyright", "rust_analyzer", "gdscript", "cssls", "jsonls"
}
