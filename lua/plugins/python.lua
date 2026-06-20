-- Python language support: LSP (pyright + ruff), treesitter, dap, venv-selector.
-- Error indicators (signs, virtual text, trouble.nvim) are provided by base LazyVim.
-- To use basedpyright instead, set: vim.g.lazyvim_python_lsp = "basedpyright"
return {
  { import = "lazyvim.plugins.extras.lang.python" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              pythonPath = "/Users/qiangqi/miniconda3/bin/python",
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
    },
  },
}
