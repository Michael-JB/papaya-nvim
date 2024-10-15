return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local dashboard = require("alpha.themes.startify")
    local header = {
      "┏┓               ",
      "┃┃┏┓┏┓┏┓┓┏┏┓     ",
      "┣┛┗┻┣┛┗┻┗┫┗┻ Nvim",
      "    ┃    ┛       ",
    }
    local header_color = "Identifier" -- This is yellow in Kanagawa

    dashboard.file_icons.provider = "devicons"
    dashboard.section.header.opts.hl = header_color
    dashboard.section.header.val = header
    require("alpha").setup(dashboard.config)

    vim.keymap.set("n", "<leader>;", ":Alpha<CR>", { desc = "Open dashboard" })
  end,
}
