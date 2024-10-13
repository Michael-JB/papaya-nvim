return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
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
      vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
      vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, {})
      vim.keymap.set('n', '<leader>sr', builtin.lsp_references, {})
      vim.keymap.set('n', '<leader>ss', builtin.treesitter, {})
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})

      require("telescope").load_extension("ui-select")
    end
  }
}
