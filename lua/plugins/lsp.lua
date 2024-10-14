return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })
      local lspconfig = require("lspconfig")

      -- Configure language servers here
      lspconfig.lua_ls.setup({})
      lspconfig.rust_analyzer.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show diagnostic" })
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Show code actions" })
      vim.keymap.set("n", "<leader>lj", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
      vim.keymap.set("n", "<leader>lk", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename symbol" })
    end,
  },
}
