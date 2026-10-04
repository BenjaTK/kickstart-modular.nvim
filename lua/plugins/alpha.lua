dashboard = require("alpha.themes.dashboard")

local function clean()
	local unused_plugins = {}

	for _, plugin in ipairs(vim.pack.get()) do
		if not plugin.active then
			table.insert(unused_plugins, plugin.spec.name)
		end
	end

	if #unused_plugins == 0 then
		vim.notify("No unused plugins.")
		return
	end

	local choice = vim.fn.confirm("Remove unused plugins?", "&Yes\n&No", 2)
	if choice == 1 then
		vim.pack.del(unused_plugins)
	end
end

dashboard.section.buttons.val = {
	dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
	dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
	dashboard.button("p", "  Update Plugins", vim.pack.update),
	dashboard.button("X", "  Clean Plugins", clean),
	dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
}

require("alpha").setup(dashboard.opts)
