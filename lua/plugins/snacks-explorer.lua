return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      enabled = true,
    },
    notifier = {
      enabled = true,
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        local is_explorer = vim.bo.filetype == "snacks_explorer"
        if is_explorer then
          vim.cmd("close")
        else
          Snacks.explorer()
        end
      end,
      desc = "Toggle Explorer",
    },
    {
      "<leader>un",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Show Notification History",
    },
  },
}
