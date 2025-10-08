return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 400,
    },
  },
  keys = {
    { "<leader>gl", ":Gitsigns blame_line<CR>", desc = "Open line blame" },
    { "<leader>gb", ":Gitsigns blame<CR>", desc = "Open buffer blame" },
  },
}
