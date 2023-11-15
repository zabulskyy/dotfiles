local function change_nvim_tree_dir()
  local nvim_tree = require("nvim-tree")
  nvim_tree.change_dir(vim.fn.getcwd())
end



return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
			log_level = "error",
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
    })
    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
  end,
}
