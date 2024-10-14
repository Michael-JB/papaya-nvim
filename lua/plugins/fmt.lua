return {
  {
    "stevearc/conform.nvim",
    config = function()
      local conform = require("conform")
      conform.setup({
        formatters_by_ft = {
          -- Configure formatters here
          lua = { "stylua", lsp_format = "fallback" },
        },
      })
      vim.keymap.set("n", "<leader>lf", conform.format, { desc = "Format file" })
    end,
  },
  {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "stevearc/conform.nvim",
    },
    opts = {},
  },
}
