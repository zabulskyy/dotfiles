vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup(
        { import = "plugins" },
        { import = "plugins.lsp" },
        { import = "lazyvim.plugins.extras.lang.python" }
)
vim.opt.guicursor = { 'a:hor5', 'i:ver25' }
vim.cmd.colorscheme "catppuccin-mocha"

require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
    },
})

require("lualine").setup({})
