return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install {
      'bash', 'c', 'cpp', 'diff', 'html',
      'lua', 'luadoc', 'markdown', 'markdown_inline',
      'query', 'vim', 'vimdoc', 'python', 'mermaid',
    }

  end,
}
