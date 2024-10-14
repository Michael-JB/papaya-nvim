return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  event = "VeryLazy",
  dependencies = {
    { "github/copilot.vim" },
    { "nvim-lua/plenary.nvim" },
  },
  build = "make tiktoken",
  opts = {
    window = {
      layout = "float",
      width = 0.7,
      height = 0.7,
      border = "rounded",
    },
    mappings = {
      submit_prompt = {
        insert = "<C-CR>",
      },
    },
  },
  keys = {
    { "<leader>ac", "<cmd>CopilotChatToggle <CR>", desc = "Toggle copilot chat" },
    { "<leader>ae", "<cmd>CopilotChatExplain <CR>", desc = "Explain selection" },
    { "<leader>ar", "<cmd>CopilotChatReview <CR>", desc = "Review selection" },
    { "<leader>ad", "<cmd>CopilotChatDocs <CR>", desc = "Document selection" },
    { "<leader>at", "<cmd>CopilotChatTests <CR>", desc = "Test selection" },
    { "<leader>af", "<cmd>CopilotChatFixDiagnostic <CR>", desc = "Fix diagnostic" },
    { "<leader>ao", "<cmd>CopilotChatOptimize <CR>", desc = "Optimize selection" },
  },
}
