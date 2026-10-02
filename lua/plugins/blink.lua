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
		preset = "default",
		[ "<C-space>" ] = { "show_and_insert", "show_documentation", "hide_documentation" },
		[ "<C-j>" ] = { "select_next", "fallback" },
		[ "<C-k>" ] = { "select_prev", "fallback" },
	},
	sources = { default = { "lsp", "path", "buffer" } },
	fuzzy = {
		implementation = "prefer_rust"
	},
}
