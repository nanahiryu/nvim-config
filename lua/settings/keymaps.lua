local keyset = vim.keymap.set
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = { noremap = true, silent = true }
local opts_coc = { silent = true, noremap = true, expr = true, replace_keycodes = false }

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

--- coc: code jump
keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
keyset("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
keyset("n", "gr", "<Plug>(coc-references)", { silent = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })


-- insert
keyset('i', '<C-l>', '<Right>', opts)
keyset('i', '<C-h>', '<Left>', opts)

--- 補完表示時にEnterで補完
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts_coc)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts_coc)
keyset("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts_coc)
