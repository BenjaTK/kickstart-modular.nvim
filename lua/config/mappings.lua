local function map(m, k, v, d)
	d = d or ""
	vim.keymap.set(m, k, v, { desc = d, noremap = true, silent = true })
end

map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remaps
map("n", "x", '"_x') -- No copiar a clipboard al eliminar carácteres.
map("n", "j", "gj")  -- Wrap-aware j
map("n", "k", "gk")  -- Wrap-aware k
map("v", ">", ">gv") -- Re-seleccionar después de indentar
map("v", "<", "<gv")
map("n", "n", "nzzzv", "Next Search Result (Centered)")
map("n", "N", "Nzzzv", "Prev Search Result (Centered)")

-- Toggles
map("n", "<leader>W", ":set wrap!<CR>", "Toggle [W]rap")
map("n", "\\", ":Neotree reveal<CR>", "NeoTree reveal")

-- Formatting
map("n", "<leader>f", function()
	vim.lsp.buf.format()
	MiniTrailspace.trim()
end, "[F]ormat Buffer")

-- fzf
map("n", "<leader>S", ":lua require('fzf-lua').files()<CR>", "[S]earch in CWD")
map("n", "<leader>sh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>", "[S]earch in [H]ome")          --search home
map("n", "<leader>sc", ":lua require('fzf-lua').files({ cwd = '~/.config' })<CR>", "[S]earch in [C]onfig") --search .config
map("n", "<leader>sf", ":lua require('fzf-lua').files({ cwd = '..' })<CR>", "[S]earch Above")              --search above
map("n", "<leader>sr", ":lua require('fzf-lua').resume()<CR>", "[R]epeat last [S]earch")                   --last search
map("n", "<leader>g", ":lua require('fzf-lua').grep()<CR>", "[g]rep")                                      --grep
map("n", "<leader>G", ":lua require('fzf-lua').grep_cword()<CR>", "[G]rep Word")                           --grep word under cursor

-- Buffers
map("n", "<S-h>", ":bprevious<CR>", "Previous Buffer")
map("n", "<S-l>", ":bnext<CR>", "Next Buffer")
map("n", "<leader>q", ":BufferClose<CR>", "[q]uit Buffer")
map("n", "<leader>Q", ":BufferClose!<CR>", "Force [Q]uit Buffer")
map("n", "<AS-h>", ":BufferMovePrevious<CR>", "Move Buffer to left")
map("n", "<AS-l>", ":BufferMoveNext<CR>", "Move Buffer to right")
map("n", "<leader>\\", ":vsplit<CR>:bnext<CR>", "Split Vertically")
map("n", "<leader>-", ":split<CR>:bnext<CR>", "Split Horizontally")
for i = 1, 9 do
	map("n", "<A-" .. i .. ">", ":BufferGoto " .. i .. "<CR>", "Go To Buffer [" .. i .. "]")
end
map("n", "<A-p>", ":BufferPin<CR>")

-- Misc
map("n", "<leader>?", ":WhichKey<CR>", "Show Mappings")
map("n", "<leader>c", ":nohlsearch<CR>", "[C]lear Search Highlights")
map("n", "<leader>R", ":so %<CR>", "[R]eload Config")
