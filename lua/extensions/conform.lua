require("conform").setup({
  formatters_by_ft = {
    typescript = { "biome", "prettier", stop_after_first = true },
    typescriptreact = { "biome", "prettier", stop_after_first = true },
    javascript = { "biome", "prettier", stop_after_first = true },
    javascriptreact = { "biome", "prettier", stop_after_first = true },
    json = { "biome", "prettier", stop_after_first = true },
    html = { "prettier" },
    css = { "prettier" },
    markdown = { "prettier" },
    yaml = { "prettier" },
    lua = { "stylua" },
  },

  format_on_save = {
    timeout_ms = 3000,
    lsp_format = "fallback",
  },
})
