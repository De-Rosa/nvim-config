return {
  'christoomey/vim-tmux-navigator',
  cmd = { 'TmuxNavigateLeft', 'TmuxNavigateDown', 'TmuxNavigateUp', 'TmuxNavigateRight' },
  keys = {
    { '<C-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Move left' },
    { '<C-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Move down' },
    { '<C-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Move up' },
    { '<C-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Move right' },
  },
}
