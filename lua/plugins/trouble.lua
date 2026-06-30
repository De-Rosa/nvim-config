return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  cmd = 'Trouble',
  keys = {
    {
      '<leader>t',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Toggle diagnostics (workspace)',
    },
    {
      '<leader>T',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Toggle diagnostics (buffer)',
    },
    {
      '<leader>cs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = 'Document symbols',
    },
    {
      '<leader>cl',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = 'LSP definitions / references',
    },
  },
  config = function()
    require('trouble').setup({
      auto_open = false,
      auto_close = true,
      focus = true,
      use_diagnostic_signs = true,
    })
  end,
}
