return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'bash', 'c', 'cpp', 'diff', 'html',
          'lua', 'luadoc', 'markdown', 'markdown_inline',
          'query', 'vim', 'vimdoc', 'python'
        },
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      }
    end
  }
}
