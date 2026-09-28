local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'uZer/pywal16.nvim' }

require('pywal16').setup()
