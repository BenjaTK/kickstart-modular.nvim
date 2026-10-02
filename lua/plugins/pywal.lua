require("pywal16").setup()

local colors = require("pywal16.core").get_colors()
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { fg = colors.background, bg = colors.color5 })
vim.api.nvim_set_hl(0, "Visual", { fg = colors.background, update = true })
vim.api.nvim_set_hl(0, "BufferInactive", { dim = true })
vim.api.nvim_set_hl(0, "BufferInactiveMod", { dim = true })
