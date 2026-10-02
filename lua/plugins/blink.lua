require("blink.cmp").setup {
	completion = {
		list = { selection = {  preselect = true, auto_insert = true }},
		menu = {
			auto_show = false
		}
	},
	appearance = {
    nerd_font_variant = 'mono',
	},
	keymap = {
		[ "<C-space>" ] = { "show_and_insert" }
	},
	sources = { default = { "lsp", "path", "buffer" } },
	fuzzy = {
		implementation = "prefer_rust"
	},
}



