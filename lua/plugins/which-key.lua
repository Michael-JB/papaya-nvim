return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 1000,
    spec = {
      { "<leader>a", group = "AI" },
      { "<leader>s", group = "Search" },
      { "<leader>l", group = "LSP" },
      { "<leader>t", group = "Themes" },
      { "<leader>p", group = "Plugins" },
    },
    icons = {
      mappings = false,
    },
  },
}
