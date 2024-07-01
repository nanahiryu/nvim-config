local env_table = require("env.obsidian_env")
require("obsidian").setup({
  workspaces = env_table.workspaces,
  -- see below for full list of options 👇
  daily_notes = env_table.daily_notes,
  completion = {
    -- Set to false to disable completion.
    nvim_cmp = true,
    -- Trigger completion at 2 chars.
    min_chars = 2,
  },
  mappings = {
    -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    -- Smart action depending on context, either follow link or toggle checkbox.
    ["<cr>"] = {
      action = function()
        return require("obsidian").util.smart_action()
      end,
      opts = { buffer = true, expr = true },
    }
  },
  templates = env_table.template,
  markdown_link_func = function(opts)
    return require("obsidian.util").markdown_link(opts)
  end,
  open_notes_in = "current",
  ui = {
    enable = true,
  }
})
