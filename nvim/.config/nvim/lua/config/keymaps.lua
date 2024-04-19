-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<C-d>", "<C-d>zz", { desc = "Center down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Center up" })
map("n", "<C-b>", "<C-b>zz", { desc = "Center back" })
map("n", "<C-f>", "<C-f>zz", { desc = "Center forward" })

map("n", "<C-A>", "$", { desc = "Go to end" })
map("n", "<C-I>", "_", { desc = "Go to beginning" })

-- map("n", "n", "nzz", { desc = "Centre search results" })
-- map("n", "N", "Nzz", { desc = "Centre search result" })
