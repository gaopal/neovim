local map = vim.keymap.set
-- TODO: 不知道为什么 <leader>w 和 <leader>c 无法在 which-key 中显示
-- 添加 <leader>w 来保存当前buffer 的映射
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map(
  "n",
  "<leader>c",
  "<Cmd>lua require('vscode').call('workbench.action.closeEditorInAllGroups')<CR>",
  { desc = "Close Current Tab" }
)
map(
  "n",
  "<leader>e",
  "<Cmd>lua require('vscode').call('workbench.action.toggleSidebarVisibility')<CR>",
  { desc = "toggleSidebarVisibility" }
)
-- reveal current active file in vscode explorer view
-- workbench.files.action.showActiveFileInExplorer
map(
  "n",
  "<leader>E",
  "<Cmd>lua require('vscode').call('workbench.files.action.showActiveFileInExplorer')<CR>",
  { desc = "reveal active file" }
)
map(
  "n",
  "<leader>a",
  "<Cmd>lua require('vscode').call('workbench.action.toggleActivityBarVisibility')<CR>",
  { desc = "toggleActivityBarVisibility" }
)
-- run js codes
map("n", "<leader>js", function()
  require("vscode").call("workbench.action.terminal.sendSequence", { args = { text = "clear\n" } })
  -- require("vscode").call("workbench.action.terminal.focus")
  require("vscode").call("workbench.action.terminal.sendSequence", { args = { text = "bun '${file}'\n" } })
end, { desc = "Run JS or TS codes with node" })
-- run ahk scripts
map("n", "<leader>kk", function()
  require("vscode").call("workbench.action.terminal.sendSequence", { args = { text = "clear\n" } })
  require("vscode").call("workbench.action.terminal.sendSequence", { args = { text = "${file}\n" } })
end, { desc = "Run ahk scripts" })
-- run python scripts
map("n", "<leader>py", function()
  require("vscode").call("workbench.action.terminal.sendSequence", { args = { text = "clear\n" } })
  require("vscode").call("workbench.action.terminal.sendSequence", { args = { text = "python '${file}'\n" } })
end, { desc = "Run python scripts" })
