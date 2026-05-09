vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
local map = vim.keymap.set

-- Save file
map("n", "<leader>w", "<Cmd>w<CR>", { desc = "Save file" })

-- Escape shortcut
map("i", "jj", "<Esc>", {})

-- File explorer
map("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Buffer navigasi
map("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Buffer berikutnya" })
map("n", "<leader>bp", "<Cmd>bprev<CR>", { desc = "Buffer sebelumnya" })

-- Navigasi antar window
map("n", "<C-k>", ":wincmd k<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-h>", ":wincmd h<CR>")
map("n", "<C-l>", ":wincmd l<CR>")

-- Clear search highlight
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear highlight" })

-- Terminal shortcuts
map("n", "<leader>th", "<Cmd>ToggleTerm size=15 direction=horizontal<CR>", { desc = "Terminal horizontal" })
map("n", "<leader>tv", "<Cmd>ToggleTerm size=80 direction=vertical<CR>", { desc = "Terminal vertical" })
map("n", "<leader>tf", "<Cmd>ToggleTerm direction=float<CR>", { desc = "Terminal floating" })

-- Keluar dari terminal mode
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })