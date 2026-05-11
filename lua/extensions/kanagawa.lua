require("kanagawa").setup()

local function set_visual_highlight()
  vim.api.nvim_set_hl(0, "Visual", { bg = "#8a8ab2" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_visual_highlight,
})

set_visual_highlight()
