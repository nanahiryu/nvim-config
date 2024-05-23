-- setup with some options
require("nvim-tree").setup{
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- key mappings
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {silent=true})

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

