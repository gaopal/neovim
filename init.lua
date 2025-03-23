-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Customize Configurations
require("custom.snippets")
require("custom.telescope")
require("custom.toggleterm")
require("custom.utils").set_os_info()

-- These Configurations just for neovim
if not vim.g.vscode then
  require("custom.config")
  require("custom.format")
  require("custom.keymaps")
  require("custom.neotree")
end

-- These Configurations is used for neovim pluin inside vscode
if vim.g.vscode then
  require("custom.config")
  require("vscode.format")
  require("vscode.keymaps")
  require("vscode.neotree")
end
