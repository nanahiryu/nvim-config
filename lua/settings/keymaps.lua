local keyset = vim.keymap.set
local opts = { noremap = true, silent = true, expr = true, replace_keycodes = false }

-- telescope
keyset('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
keyset('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
keyset('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
keyset('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

-- 補完表示時にEnterで補完
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
keyset("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)


