return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    opts = {
      hint = "floating-big-letter",
      selection_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker",
    },
    opts = {
      window = {
        mappings = {
          -- always open via the window picker
          ["<CR>"] = "open_with_window_picker",
        },
      },
      filesystem = {
        filtered_items = {
          -- Always show hidden files
          visible = true,
        },
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
      },
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" } },
    },
  },
}
