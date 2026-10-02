dashboard = require("alpha.themes.dashboard")

dashboard.section.buttons.val = {
	dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
	dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
	dashboard.button("p", "  Update Plugins", ":packupdate<CR>"),
	dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
}

require("alpha").setup(dashboard.opts)
