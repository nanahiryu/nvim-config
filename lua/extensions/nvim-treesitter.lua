require('nvim-treesitter').setup {}

-- パーサーの自動インストール
local ensure_installed = { 'lua', 'javascript', 'typescript', 'tsx', 'html', 'css', 'markdown', 'markdown_inline' }
for _, lang in ipairs(ensure_installed) do
  pcall(function()
    vim.cmd('TSInstall! ' .. lang)
  end)
end

-- ハイライト有効化
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- インデント
vim.opt.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
