require("barbar").setup {
	animation = false,
	focus_on_close = "left",
	sidebar_filetypes = {
		['neo-tree'] = { event = "BufWipeout" }
	},
	icons = {
		buffer_index = true,
		inactive = {buffer_index = true}
	}
}
