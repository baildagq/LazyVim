return {
  "jayli/copilot.nvim",
  config = function()
    vim.g.copilot_apikey = "sk-d1d2d45cbcfe4de990561dd653217adb"
    vim.g.copilot_base_url = "https://api.deepseek.com/beta"
    vim.g.copilot_llm = "deepseek"
    vim.g.copilot_model = "deepseek-coder"
    vim.g.copilot_timeout = 5
    vim.g.copilot_lines_limit = 500
  end,
}
