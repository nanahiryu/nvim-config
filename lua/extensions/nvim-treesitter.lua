require('nvim-treesitter').setup {
  ensure_installed = { 'lua', 'javascript', 'typescript', 'tsx', 'html', 'css', 'markdown', 'markdown_inline' },
  auto_install = true,
}

-- ハイライト有効化
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- インデント
vim.opt.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
