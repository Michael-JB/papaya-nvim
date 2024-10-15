return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme kanagawa")

    vim.keymap.set("n", "<leader>tn", ":colorscheme kanagawa<CR>", { desc = "Normal" })
    vim.keymap.set("n", "<leader>td", ":colorscheme kanagawa-dragon<CR>", { desc = "Dark" })
    vim.keymap.set("n", "<leader>tl", ":colorscheme kanagawa-lotus<CR>", { desc = "Light" })
  end,
}
