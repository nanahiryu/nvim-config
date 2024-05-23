-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = true })

-- 補完表示時にEnterで補完
vim.opt.completeopt = {'menuone', 'noinsert'}
vim.api.nvim_set_keymap('i', '<CR>', [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], {expr = true, silent = true})


