local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- LSPアタッチ時のキーマップ設定
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { noremap = true, silent = true, buffer = ev.buf }
    local keymap = vim.keymap.set

    keymap("n", "gd", vim.lsp.buf.definition, opts)
    keymap("n", "gy", vim.lsp.buf.type_definition, opts)
    keymap("n", "gi", vim.lsp.buf.implementation, opts)
    keymap("n", "gr", vim.lsp.buf.references, opts)
    keymap("n", "[g", vim.diagnostic.goto_prev, opts)
    keymap("n", "]g", vim.diagnostic.goto_next, opts)
    keymap("n", "K", vim.lsp.buf.hover, opts)
    keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
    keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
})

-- 全LSPサーバー共通設定
vim.lsp.config("*", {
  capabilities = capabilities,
})

-- lua_ls 固有設定
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})

-- mason-lspconfig: 自動インストール + 自動有効化
require("mason-lspconfig").setup({
  ensure_installed = {
    "ts_ls",
    "html",
    "cssls",
    "jsonls",
    "yamlls",
    "lua_ls",
    "taplo",
    "marksman",
  },
  automatic_enable = true,
})

-- Diagnostics設定
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
