return {
  'akinsho/bufferline.nvim', 
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      
      options= {
        enforce_regular_tabs = true,
        offsets={
            {
              filetype= "NvimTree",
              text_align= "center",
              text = function()
                return vim.fn.getcwd()
              end,
            },
         },
        numbers= "ordinal",
      }
    })
  end,
}
