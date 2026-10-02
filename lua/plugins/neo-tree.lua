require("neo-tree").setup {
	filesystem = {
		filtered_items = {
			hide_by_pattern = {"*.gd.uid", "*.import"},
		},
		window = {
			mappings = {
				["\\"] = "close_window",
			},
		},
	},
	default_component_configs = {
		icon = {
			provider = function(icon, node, state) icon.text = icon.text end,
		}
	},
	filetype = { show = false }
}
