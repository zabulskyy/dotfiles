-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- nvim-tree
keymap.set("n", "<leader>e", " ", { desc = "file explorer" })
keymap.set("n", "<leader>ea", "<cmd>NvimTreeOpen<CR>", { desc = "open file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "focus file explorer on current file" })
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "focus file explorer on current file" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh file explorer" })

-- bufferline
keymap.set("n", "<leader>g" , " ", { desc = "bufferline" })
keymap.set("n", "<leader>gq", "<cmd>BufferLineCloseOthers<cr>", { desc = "close all buffers but current" })
keymap.set("n", "<leader>gj", "<cmd>BufferLinePick<cr>", { desc = "pick buffer" })
keymap.set("n", "<leader>g1", "<cmd>BufferLineGoToBuffer 1<cr>", { desc = "go to buffer 1" })
keymap.set("n", "<leader>g2", "<cmd>BufferLineGoToBuffer 2<cr>", { desc = "go to buffer 2" })
keymap.set("n", "<leader>g3", "<cmd>BufferLineGoToBuffer 3<cr>", { desc = "go to buffer 3" })
keymap.set("n", "<leader>g4", "<cmd>BufferLineGoToBuffer 4<cr>", { desc = "go to buffer 4" })
keymap.set("n", "<leader>g5", "<cmd>BufferLineGoToBuffer 5<cr>", { desc = "go to buffer 5" })
keymap.set("n", "<leader>g6", "<cmd>BufferLineGoToBuffer 6<cr>", { desc = "go to buffer 6" })
keymap.set("n", "<leader>g7", "<cmd>BufferLineGoToBuffer 7<cr>", { desc = "go to buffer 7" })
keymap.set("n", "<leader>g8", "<cmd>BufferLineGoToBuffer 8<cr>", { desc = "go to buffer 8" })
keymap.set("n", "<leader>g9", "<cmd>BufferLineGoToBuffer 9<cr>", { desc = "go to buffer 9" })
keymap.set("n", "<leader>g0", "<cmd>BufferLineGoToBuffer 10<cr>", { desc = "go to buffer 10" })
keymap.set("n", "<leader>gl", "<cmd>BufferLineCloseLeft<cr>", { desc = "close all buffers to the left" })
keymap.set("n", "<leader>gr", "<cmd>BufferLineCloseRight<cr>", { desc = "close all buffers to the right" })
keymap.set("n", "<leader>gn", "<cmd>BufferLineCycleNext<cr>", { desc = "go to the next buffer" })
keymap.set("n", "<leader>gp", "<cmd>BufferLineCyclePrev<cr>", { desc = "go to the prev buffer" })
keymap.set("n", "<c-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "go to the next buffer" })
keymap.set("n", "<c-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "go to the prev buffer" })
keymap.set("n", "<c-j>", "<cmd>BufferLineMoveNext<cr>", { desc = "move buffer to the right" })
keymap.set("n", "<c-k>", "<cmd>BufferLineMovePrev<cr>", { desc = "move buffer to the left" })

-- close brackets and quotes with no break
keymap.set("i", "{", "{}<left>", { desc = "close { bracket" })
keymap.set("i", "(", "()<left>", { desc = "close ( bracket" })
keymap.set("i", "[", "[]<left>", { desc = "close [ bracket" })
keymap.set("i", "'", "''<left>", { desc = "close ' quote" })
keymap.set("i", "\"", "\"\"<left>", { desc = "close \" quote" })
keymap.set("i", "`", "``<left>", { desc = "close ` quote" })

-- themes
keymap.set("n", "<leader>c", " ", { desc = "themes" })

keymap.set("n", "<leader>cz", ":set background=light<CR><esc>", { desc = "light mode" })
keymap.set("n", "<leader>cx", ":set background=dark<CR><esc>", { desc = "dark mode" })

keymap.set("n", "<leader>cg", ":colorscheme gruvbox<CR><esc>", { desc = "gruvbox" })
keymap.set("n", "<leader>cm", ":colorscheme catppuccin-macchiato<CR><esc>", { desc = "catppuccin macchiato" })
keymap.set("n", "<leader>cc", ":colorscheme catppuccin-mocha<CR><esc>", { desc = "catppuccin mocha" })
keymap.set("n", "<leader>cf", ":colorscheme catppuccin-frappe<CR><esc>", { desc = "catppuccin frappe" })


-- Toggle terminal
keymap.set("n", "<leader>t", " ", { desc = "terminal" })
keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "toggle terminal horizontally" })
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=100<cr>", { desc = "toggle terminal vertically" })
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<cr>", { desc = "toggle terminal tab" })
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "toggle terminal float" })
-- open floating terminal and run "lazygit" command
keymap.set("n", "<leader>tg", "<cmd>ToggleTerm direction=float<cr><cmd>term lazygit<cr>", { desc = "toggle terminal float and run lazygit" })
-- open terminal in current file directory

keymap.set("n", "<leader>tx", "<cmd>ToggleTerm direction=float<cr><cmd>term python3 /Users/bruno/.config/nvim/python.py<cr>", { desc = "toggle terminal float and run lazygit" })


-- Clear search with <esc>
keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "escape and clear hlsearch" })

-- lazy
keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "lazy" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- insert tab at the beginning of the line if tab is pressed in normal mode
keymap.set("n", "<tab>", ">>")
-- remove tab at the beginning of the line if shift+tab is pressed in normal mode
keymap.set("n", "<s-tab>", "<<")
-- add new line in normal mode if enter is pressed
keymap.set("n", "<cr>", "o<esc>")

keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "quit" })
keymap.set("n", "<leader>qq", "<cmd>qall<cr>", { desc = "quit all" })
keymap.set("n", "<leader>qw", "<cmd>wqa<cr>", { desc = "write all add quit all forse" })

-- move lines up and down
keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "move line up" })
keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "move line down" })
-- move visual selection up and down
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move selection up" })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move selection down" })

-- move to the beginning of the line
keymap.set("n", "H", "^", { desc = "move to the beginning of the line" })

-- move to the end of the line
keymap.set("n", "L", "$", { desc = "move to the end of the line" })

-- toggle capitalization
keymap.set("n", "<leader>u", "vg~", { desc = "toggle case" })

-- wrap ([{'"`(selected)`"'}]) text in brackets
keymap.set("v", "(", "l<esc>`<i(<esc>`>a)<esc>", { desc = "wrap in ()" })
keymap.set("v", "[", "l<esc>`<i[<esc>`>a]<esc>", { desc = "wrap in []" })
keymap.set("v", "{", "l<esc>`<i{<esc>`>a}<esc>", { desc = "wrap in {}" })
keymap.set("v", "'", "l<esc>`<i'<esc>`>a'<esc>", { desc = "wrap in ''" })
keymap.set("v", "`", "l<esc>`<i`<esc>`>a`<esc>", { desc = "wrap in ``" })
keymap.set("v", "\"", "l<esc>`<i\"<esc>`>a\"<esc>", { desc = "wrap in \"\"" })

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>f', " " , { desc = "find" })
keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files" })
keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "find grep" })
keymap.set('n', '<leader>fb', builtin.buffers, {desc = "find buffers" })
keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "find help" })

