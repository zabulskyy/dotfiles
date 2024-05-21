return {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local todo_comments = require("todo-comments")
      todo_comments.setup()
  end,
}


-- TODO
-- FIXME
-- HACK
-- XXX
-- WARN
-- BUG
-- NOTE
-- IDEA
-- REVIEW
-- OPTIMIZE
-- PERFORMANCE
