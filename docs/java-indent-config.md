# Neovim Java Indent Configuration

## Problem
Java autoformat/indent not working with configured tabSize = 4, defaulting to 2 spaces.

## Solution

### 1. Update plugin settings
File: `lua/plugins/java.lua`

```lua
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
```

### 2. Add FileType autocmd for Java
File: `lua/config/autocmds.lua`

```lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end,
})
```

This ensures:
- `expandtab`: Convert tabs to spaces
- `shiftwidth`: Indentation width (in spaces)
- `tabstop`: Width of tab character
- `softtabstop`: Number of spaces for Tab key

## Usage
Restart Neovim or source the config files for changes to take effect.
