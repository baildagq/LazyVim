-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, { desc = "Find Files" })

vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live Grep" })

-- Command aliases
vim.api.nvim_create_user_command("Ldt", function()
  vim.cmd("Leet desc toggle")
end, { desc = "Leet desc toggle" })

vim.keymap.set({ "n", "v" }, "<leader>f", function()
  local filetype = vim.bo.filetype
  local opts = { async = true }
  if filetype == "json" or filetype == "jsonc" or filetype == "json5" then
    opts.formattingOptions = {
      tabSize = 4,
    }
  end
  vim.lsp.buf.format(opts)
end, { desc = "Format" })
