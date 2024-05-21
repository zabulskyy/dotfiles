return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.o.updatetime = 250
        -- Show line diagnostics automatically in hover window
        vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
          group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
          callback = function ()
            vim.diagnostic.open_float(nil, {focus=false})
          end
        })
        -- Hide diagnostic message from inline 
        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics, {
            underline =  true,
            virtual_text = false,
            signs = true,
            update_in_insert = true,
          }
        )

        local base = require("lspconfig")
        -- python lsp
        base.pyright.setup {}
        -- lua lsp
        base.lua_ls.setup {}
        -- c/c++ lsp
        base.clangd.setup {
          on_attach = function(client, bufnr)
            client.server_capabilities.signatureProvider = false
          end,
        }
    end,
}

