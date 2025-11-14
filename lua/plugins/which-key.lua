return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 1000,
    spec = {
      { "<leader>s", group = "Search" },
      { "<leader>l", group = "LSP" },
      { "<leader>g", group = "Git" },
      { "<leader>t", group = "Themes" },
      { "<leader>p", group = "Plugins" },
      { "<leader>a", group = "AI" },
    },
    icons = {
      mappings = false,
    },
  },
}
