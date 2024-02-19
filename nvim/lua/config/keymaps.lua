-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap  


-- bufferline
keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", { desc = "Go to buffer 1" })
keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", { desc = "Go to buffer 2" })
keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", { desc = "Go to buffer 3" })
keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", { desc = "Go to buffer 4" })
keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", { desc = "Go to buffer 5" })
keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", { desc = "Go to buffer 6" })
keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", { desc = "Go to buffer 7" })
keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", { desc = "Go to buffer 8" })
keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", { desc = "Go to buffer 9" })
keymap.set("n", "<leader>0", "<cmd>BufferLineGoToBuffer 10<cr>", { desc = "Go to buffer 10" })
keymap.set("n", "<leader>qo", "<cmd>BufferLineCloseOthers<cr>", { desc = "Close all other visible buffers" })
keymap.set("n", "<leader>ql", "<cmd>BufferLineCloseLeft<cr>", { desc = "Close all buffers to the left" })
keymap.set("n", "<leader>qr", "<cmd>BufferLineCloseRight<cr>", { desc = "Close all buffers to the right" })


-- close brackets and quotes with no break
keymap.set("i", "{", "{}<left>", { desc = "Close { bracket" })
keymap.set("i", "(", "()<left>", { desc = "Close ( bracket" })
keymap.set("i", "[", "[]<left>", { desc = "Close [ bracket" })
keymap.set("i", "'", "''<left>", { desc = "Close ' quote" })
keymap.set("i", "\"", "\"\"<left>", { desc = "Close \" quote" })
keymap.set("i", "`", "``<left>", { desc = "Close ` quote" })


-- themes and tweaks
keymap.set("i", "<tab>", "    ", { desc = "Insert four tabs" })
keymap.set("n", "<leader>cm", ":colorscheme catppuccin-macchiato<CR><esc>", { desc = "catppuccin macchiato" })
keymap.set("n", "<leader>cc", ":colorscheme catppuccin-mocha<CR><esc>", { desc = "catppuccin mocha" })
keymap.set("n", "<leader>cf", ":colorscheme catppuccin-frappe<CR><esc>", { desc = "catppuccin frappe" })
keymap.set("n", "<leader>cl", ":colorscheme catppuccin-latte<CR><esc>", { desc = "catppuccin latte" })
keymap.set("n", "<leader>cg", ":colorscheme gruvbox<CR><esc>", { desc = "gruvbox dark" })


-- Toggle terminal
keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle terminal horizontally" })
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=100<cr>", { desc = "Toggle terminal vertically" })
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<cr>", { desc = "Toggle terminal tab" })
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle terminal float" })


-- Clear search with <esc>
keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })


-- lazy
keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })


-- delete single character without copying into register
keymap.set("n", "x", '"_x')


-- insert tab at the beginning of the line if tab is pressed in normal mode
keymap.set("n", "<tab>", ">>")
