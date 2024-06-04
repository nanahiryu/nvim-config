require('nvim-treesitter.configs').setup {
  ensure_installed = { 'lua', "javascript", "typescript",  "tsx", "html", "css", "markdown", "markdown_inline" },
  sync_install = true,
  auto_install = true,

  highlight = {
    enable = true,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },

  indent = {
    enable = true,
  },
}

