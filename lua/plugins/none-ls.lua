return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    opts = {
      ensure_installed = { "stylua" },
    },
    config = function()
      vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format file" })
    end,
  },
}
