require('conform').setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    c = { 'clang-format' },
    cpp = { 'clang-format' },
    css = { 'prettier' },
    html = { 'prettier' },
    json = { 'prettier' },
    yaml = { 'prettier' },
    markdown = { 'prettier' },
    python = { 'isort', 'black' },
    gdscript = { 'gdformat' },
    ['_'] = { 'trim_whitespace' },
  },
}
