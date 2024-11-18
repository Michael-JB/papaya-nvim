return {
  {
    "github/copilot.vim",
    event = "VeryLazy",
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    keys = {
      { "<leader>ac", "<cmd>CopilotChatToggle <CR>", mode = { "n", "v" }, desc = "Toggle copilot chat" },
      { "<leader>ae", "<cmd>CopilotChatExplain <CR>", mode = { "n", "v" }, desc = "Explain selection" },
      { "<leader>ar", "<cmd>CopilotChatReview <CR>", mode = { "n", "v" }, desc = "Review selection" },
      { "<leader>ad", "<cmd>CopilotChatDocs <CR>", mode = { "n", "v" }, desc = "Document selection" },
      { "<leader>at", "<cmd>CopilotChatTests <CR>", mode = { "n", "v" }, desc = "Test selection" },
      { "<leader>af", "<cmd>CopilotChatFix <CR>", mode = { "n", "v" }, desc = "Fix diagnostic" },
      { "<leader>ao", "<cmd>CopilotChatOptimize <CR>", mode = { "n", "v" }, desc = "Optimize selection" },
    },
    opts = {
      show_help = false,
      window = {
        layout = "float",
        width = 0.7,
        height = 0.7,
        border = "rounded",
      },
      mappings = {
        complete = {
          -- This clashes with github/copilot.vim tab completion so disable it
          insert = "",
        },
      },
    },
  },
}
