-- briefly highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.hl.on_yank({ higroup = "IncSearch", timeout = 100 })
  end,
})

-- automatically resize vim windows when the terminal is resized
vim.api.nvim_create_autocmd("VimResized", {
  group = vim.api.nvim_create_augroup("resize_window", {}),
  desc = "Resize windows on VimResized",
  pattern = "*",
  callback = function()
    vim.api.nvim_command("wincmd =")
    vim.hl.on_yank({ higroup = "IncSearch", timeout = 100 })
  end,
})
