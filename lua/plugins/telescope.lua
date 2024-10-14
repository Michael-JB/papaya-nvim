return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search files" })
      vim.keymap.set("n", "<leader>sg", builtin.git_files, { desc = "Search git files" })
      vim.keymap.set("n", "<leader>st", builtin.live_grep, { desc = "Search text" })
      vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search help tags" })
      vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Search keymaps" })
      vim.keymap.set("n", "<leader>sr", builtin.lsp_references, { desc = "Search references" })
      vim.keymap.set("n", "<leader>ss", builtin.treesitter, { desc = "Search symbols" })
      vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Search diagnostics" })

      require("telescope").load_extension("ui-select")
    end,
  },
}
