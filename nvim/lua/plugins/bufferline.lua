return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({

            options = {
                enforce_regular_tabs = true,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text_align = "center",
                        text = function()
                            current_folder_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
                            return current_folder_name
                        end,
                    },
                },
                numbers = "ordinal",
            }
        })
    end,
}
