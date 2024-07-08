-- packer
if vim.g.vscode then
  vim.opt.clipboard = "unnamedplus"
  vim.opt.loadplugins = false
  require("settings")
else
  require "plugins"
  require("settings")
end
