return {
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
      config = function()
          local configs = require("nvim-treesitter.configs")

          configs.setup({
              ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python",
                                  "bash", "json", "yaml", "css", "scss", "typescript", "dockerfile", "toml", "csv"},
              sync_install = false,
              highlight = { enable = true },
              indent = { enable = true },
              auto_install = true,
          })
      end
    }
}
