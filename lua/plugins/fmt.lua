return {
  {
    "stevearc/conform.nvim",
    config = function()
      local conform = require("conform")
      conform.setup({
        formatters_by_ft = {
          -- Configure formatters here
          lua = { "stylua" },
          bash = { "shfmt" },
          python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
          typescript = { "prettier" },
          javascript = { "prettier" },
        },
        default_format_opts = {
          lsp_format = "fallback",
        },
      })
      vim.keymap.set("n", "<leader>lf", conform.format, { desc = "Format file" })
    end,
  },
  {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = {
      "mason-org/mason.nvim",
      "stevearc/conform.nvim",
    },
    opts = {},
  },
}
