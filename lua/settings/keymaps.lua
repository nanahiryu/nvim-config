local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }

-- normal
keyset('n', '<Space><CR>', 'o<Esc>', opts)

--- tab左右移動
keyset('n', '<C-l>', '<C-w>l', opts)
keyset('n', '<C-h>', '<C-w>h', opts)

--- telescope
keyset('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
keyset('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
keyset('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
keyset('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

-- insert
keyset('i', '<C-l>', '<Right>', opts)
keyset('i', '<C-h>', '<Left>', opts)
