local create = vim.api.nvim_create_autocmd
local function group(name, c)
	return vim.api.nvim_create_augroup(name, { clear = c })
end

create("TextYankPost", {
	group = group("highlight-yank", true),
	callback = function() vim.hl.on_yank() end,
})

create("LspAttach", {
	group = group("lsp-attach", true),

	callback = function(event)
		local map = function(keys, func, desc, mode)
			mode = mode or 'n'
			vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
		end

		-- Rename
		map("grn", vim.lsp.buf.rename, "[R]e[n]ame")
		map("gra", vim.lsp.buf.code_action, "[G]oto Code [A]ction", { "n", "x" })
		map("grD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if not client then return end
		if client:supports_method('textDocument/inlayHint', event.buf) then
			map('<leader>th',
				function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf }) end,
				'[T]oggle Inlay [H]ints'
			)
		end
	end
})

create("BufWritePost", {
	callback = function()
		require("lint").try_lint()
	end,
})
