return {
  {
    "mason-org/mason-lspconfig.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    keys = {
      { "K", vim.lsp.buf.hover, desc = "Show hover information" },
      { "gd", vim.lsp.buf.definition, desc = "Go to definition" },
      { "gr", vim.lsp.buf.references, desc = "Go to references" },
      { "gl", vim.diagnostic.open_float, desc = "Show diagnostic" },
      { "<leader>la", vim.lsp.buf.code_action, desc = "Show code actions" },
      { "<leader>lj", vim.diagnostic.goto_next, desc = "Next diagnostic" },
      { "<leader>lk", vim.diagnostic.goto_prev, desc = "Previous diagnostic" },
      { "<leader>lr", vim.lsp.buf.rename, desc = "Rename symbol" },
      { "<leader>li", ":LspInfo<CR>", desc = "Show LSP information" },
      { "<leader>lm", ":Mason<CR>", desc = "Open Mason" },
    }
  },
  {
    -- Helm sucks: it requires that yaml templates have a `.yaml` extension, even though they're
    -- not valid yaml files. Because of this, we summon `vim-helm` which adds some vim-script to
    -- correctly classify these files as `helm` filetype to prevent the yaml LS attaching. Oh Helm.
    "towolf/vim-helm",
    event = "VeryLazy",
    ft = "helm",
  },
}
