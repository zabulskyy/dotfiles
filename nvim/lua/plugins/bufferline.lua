return {
  'akinsho/bufferline.nvim', 
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
	
    })
  end,
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
    },

  },
}
