-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- which-key and lazyvim utils
local wk = require("which-key")
local Util = require("lazyvim.util")

-- Icon Picking (might be replaced due to old icons)
vim.keymap.set("n", "<Leader>se", "<cmd>IconPickerNormal<cr>", { desc = "Icons", silent = true })
vim.keymap.set("n", "<Leader>sE", "<cmd>IconPickerYank<cr>", { desc = "Icons Yank", silent = true })

-- Easy Redo
vim.keymap.set("n", "U", "<cmd>redo<cr>", { desc = "Redo", silent = true })

-- Github CLI Commands
wk.register({
  gt = {
    name = "CLI",
  },
}, { prefix = "<leader>" })

vim.keymap.set("n", "<leader>gtd",
  function() Util.terminal({ "gh", "dash" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false }) end,
  { desc = "Github Dash" })

vim.keymap.set("n", "<leader>gtt",
  function() Util.terminal({ "gum-ghtidy" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false }) end,
  { desc = "Github Tidy" })

vim.keymap.set("n", "<leader>gts",
  function() Util.terminal({ "soft" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false }) end,
  { desc = "Soft Serve Local" })
