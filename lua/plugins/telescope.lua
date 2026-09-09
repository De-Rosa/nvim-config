return {
  'nvim-telescope/telescope.nvim',
  branch = 'master',
  dependencies = { 'nvim-lua/plenary.nvim' },
  defaults = { 
    file_ignore_patterns = { 
      "node_modules" 
    }
  },
}
