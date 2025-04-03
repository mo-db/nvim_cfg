return {
  { -- Collection of various small independent plugins/modules
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      -- core
      require("mini.icons").setup()
      require("mini.snippets").setup()
      -- require("mini.completion").setup()
      require("mini.files").setup()
      vim.keymap.set("n", "-", function()
        if not require("mini.files").close() then
          require("mini.files").open(vim.api.nvim_buf_get_name(0), false)
        end
      end, { desc = "File explorer" })
      require("mini.statusline").setup()

      -- optional
      require("mini.comment").setup()
      require("mini.cursorword").setup()
      require("mini.starter").setup()
      -- require("mini.operators").setup()
    end,
  },
}
