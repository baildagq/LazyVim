return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "jdtls",
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          format = {
            settings = {
              tabSize = 4,
              insertSpaces = true,
            },
          },
        },
      },
    },
  },
}
