return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  opts = {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
