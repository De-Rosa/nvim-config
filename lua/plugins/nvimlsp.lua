return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
      )

      -- clangd
      vim.lsp.config("clangd", {
        cmd = { "clangd" },
        capabilities = capabilities,
        root_markers = { "compile_commands.json", ".git" },
      })

      vim.lsp.enable("clangd")

      -- pyright
      vim.lsp.config("pyright", {
        capabilities = capabilities,
        root_markers = {
          "pyproject.toml",
          "setup.py",
          "setup.cfg",
          "requirements.txt",
          ".git",
        },
      })

      vim.lsp.enable("pyright")
    end,
  },
}

