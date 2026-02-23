local lint = require("lint")

lint.linters_by_ft = {
  javascript = { "biomejs" },
  javascriptreact = { "biomejs" },
  typescript = { "biomejs" },
  typescriptreact = { "biomejs" },
  json = { "biomejs" },
  markdown = { "markdownlint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})
