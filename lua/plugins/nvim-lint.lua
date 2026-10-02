require("lint").linters_by_ft = {
	lua = { "luac" },
	markdown = { "markdownlint" }, -- Make sure to install `markdownlint` via mason / npm
	gdscript = { "gdlint" },
	css = { "stylelint" },
	sh = { "bash" }
}
