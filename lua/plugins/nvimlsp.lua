return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'c', 'cpp', 'objc', 'objcpp' },
        callback = function(args)
          vim.lsp.start({
            name = 'clangd',
            cmd = { 'clangd' },
            root_dir = require('lspconfig.util').root_pattern('compile_commands.json', '.git')(args.file),
          })
        end,
      })
    end,
  }
}
