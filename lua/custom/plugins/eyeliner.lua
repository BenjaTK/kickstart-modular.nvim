local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'jinh0/eyeliner.nvim' }

require('eyeliner').setup({ highlight_on_key = true, dim = true, disabled_buftypes = { "nofile" }, disable_filetypes = { "NvimTree" } })
