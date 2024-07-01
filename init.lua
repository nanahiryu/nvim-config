-- packer
if vim.g.vscode then
  require("settings")
else
  require "plugins"
  require("settings")
end
