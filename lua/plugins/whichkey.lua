return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    preset = 'helix',
    delay = 300,
    win = { border = 'rounded' },
    spec = {
      { '<leader>c', group = 'code' },
      { '<leader>f', group = 'find' },
      { '<leader>a', group = 'claude' },
    },
  },
  keys = {
    { '<leader>?', function() require('which-key').show({ global = false }) end, desc = 'Buffer keymaps' },
  },
}
