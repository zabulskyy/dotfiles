-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap  

keymap.set("i", "<tab>", "    ", { desc = "Insert four tabs" })
keymap.set("n", "<leader>tc", ":colorscheme catppuccin-mocha<CR><esc>", { desc = "catppuccin mocha" })
keymap.set("n", "<leader>tm", ":colorscheme catppuccin-macchiato<CR><esc>", { desc = "catppuccin macchiato" })
keymap.set("n", "<leader>tf", ":colorscheme catppuccin-frappe<CR><esc>", { desc = "catppuccin frappe" })
keymap.set("n", "<leader>tl", ":colorscheme catppuccin-latte<CR><esc>", { desc = "catppuccin latte" })
keymap.set("n", "<leader>tg", ":colorscheme gruvbox<CR><esc>", { desc = "gruvbox dark" })


-- Clear search with <esc>
keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })


-- lazy
keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- formatting
keymap.set({ "n", "v" }, "<leader>cf", function()
  Util.format({ force = true })
end, { desc = "Format" })


-- delete single character without copying into register
keymap.set("n", "x", '"_x')
