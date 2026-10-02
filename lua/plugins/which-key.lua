require("which-key").setup {
	delay = 0,
	icons = { mappings = true },
	spec = {
		{ '<leader>s', group = '[S]earch', mode = { 'n', 'v' } }
	}
}
