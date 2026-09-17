local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh "habamax/vim-godot" }


vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('godot-lsp-attach', { clear = true }),
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if not client then return end
    if client.name == "gdscript" then
      vim.keymap.set('n', '<leader>rm', '<Cmd>GodotRun<CR>', { desc = "Run main scene", silent = true })
      vim.keymap.set('n', '<leader>rf', '<Cmd>GodotRunFZF<CR>', { desc = "Run scene with fuzzy finder", silent = true })
      vim.keymap.set('n', '<leader>rr', '<Cmd>GodotRunLast<CR>', { desc = "Re-run last scene", silent = true })
    end
  end,
})

-- vim: ts=2 sts=2 sw=2 et
