return {
  "nvim-neo-tree/neo-tree.nvim",
  event = "VeryLazy",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        -- Always show hidden files
        visible = true,
      },
    },
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" } },
  },
}
