return { 'echasnovski/mini.nvim', version = false,

         config = function()
             require('mini.indentscope').setup({
                 symbol = "│",
             })
             --    require('mini.pairs').setup()
         end,

}
