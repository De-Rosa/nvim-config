return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPost', 'BufWritePost', 'InsertLeave' },
  config = function()
    local lint = require('lint')

    -- Use pylint for python
    lint.linters_by_ft = {
      python = { 'pylint' },
    }

    -- Run linting on these events
    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
      callback = function()
        lint.try_lint()
      end,
    })

    -- Optional: manual trigger
    vim.keymap.set('n', '<leader>l', function()
      lint.try_lint()
    end, { desc = 'Trigger linting' })
  end,
}
