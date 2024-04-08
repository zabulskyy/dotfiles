return {
  "neovim/nvim-lspconfig",
  config = function()
    -- python lsp
    require("lspconfig").pyright.setup{}
    -- lua lsp
    require("lspconfig").lua_ls.setup{}
  end,
}

