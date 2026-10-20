return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  opts = function()
    local theme = vim.deepcopy(require('lualine.themes.vscode'))
    for _, mode in pairs(theme) do
      if mode.b then
        mode.b.bg = '#333333'
        mode.b.fg = '#cccccc'
      end
      if mode.c then
        mode.c.bg = '#181818'
      end
    end

    return {
      options = {
        theme = theme,
        globalstatus = true,
        component_separators = { left = '│', right = '│' },
        section_separators = { left = '', right = '' },
      },
      extensions = { 'neo-tree' },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { 'diagnostics', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
  init = function()
    vim.o.showmode = false
  end,
}
