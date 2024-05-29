-- github-color-scheme
-- vim.cmd[[colorscheme github_dark]]
-- everforest
vim.cmd[[colorscheme everforest]]

-- 表示設定
vim.opt.number = true  -- 行番号を表示
vim.opt.title = true  -- 編集中のファイル名を表示
vim.opt.showmatch = true  -- 括弧入力時の対応する括弧を表示
vim.cmd('syntax on')  -- コードの色分け
vim.opt.tabstop = 2  -- インデントを半角スペース2つ分に設定
vim.opt.smartindent = false  -- スマートインデントOFF
vim.opt.autoindent = true  -- オートインデントON
vim.opt.expandtab = true  -- Tabインデント時に設定個数分の半角スペース挿入
vim.opt.shiftwidth = 2  -- オートインデント時のズレ幅を半角スペース2つ分に設定
vim.opt.compatible = false

-- 検索設定
vim.opt.ignorecase = true  -- 大文字/小文字の区別なく検索
vim.opt.smartcase = true  -- 検索文字列に大文字/小文字が混在した場合のみ区別して検索
vim.opt.wrapscan = true  -- 末尾まで検索したら先頭に戻る

-- yankをclipboardに
vim.opt.clipboard:append('unnamed')

-- LightLineにcoc.nvimのステータスを載せる
vim.g.lightline = {
  active = {
    right = {
      { 'coc' }
    }
  },
  component_function = {
    coc = 'coc#status'
  }
}

-- Diagnosticsの、左横のアイコンの色設定
vim.cmd('highlight CocErrorSign ctermfg=15 ctermbg=196')
vim.cmd('highlight CocWarningSign ctermfg=0 ctermbg=172')

-- :PackerInstall時にPackerCompileもさせる
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})


