return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  event = "VeryLazy",
  dependencies = {
    { "github/copilot.vim" },
    { "nvim-lua/plenary.nvim" }
  },
  build = "make tiktoken",
  opts = {},
}