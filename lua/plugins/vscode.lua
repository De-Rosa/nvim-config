return {
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      local c = require('vscode.colors').get_colors()
      require('vscode').setup({
        style = 'dark',
        transparent = true,
        italic_comments = true,
        disable_nvimtree_bg = true,
        color_overrides = {
          vscBack = '#1e1e1e',
          vscFront = '#cccccc',
          vscSelection = '#3a3d41',
        },
        group_overrides = {
          CursorLine = { bg = '#2a2d2e' },
          LineNr = { fg = '#4b4b4b' },
          EndOfBuffer = { fg = '#4b4b4b' },
          CursorLineNr = { fg = '#c6c6c6', bold = true },
          Search = { bg = '#613214' },
          IncSearch = { bg = '#9e6a03', fg = '#ffffff' },
          MatchParen = { bg = c.vscSelection, bold = true },

          NeoTreeNormal = { fg = '#cccccc', bg = 'NONE' },
          NeoTreeNormalNC = { fg = '#cccccc', bg = 'NONE' },
          NeoTreeFileName = { fg = '#cccccc' },
          NeoTreeFileNameOpened = { fg = '#ffffff', bold = true },
          NeoTreeDirectoryName = { fg = '#3b8eea', bold = true },
          NeoTreeDirectoryIcon = { fg = '#3b8eea' },
          NeoTreeRootName = { fg = '#3b8eea', bold = true },
          NeoTreeFileIcon = { fg = '#cccccc' },
          NeoTreeIndentMarker = { fg = '#585858' },
          NeoTreeExpander = { fg = '#c5c5c5' },
          NeoTreeDotfile = { fg = '#8c8c8c' },
          NeoTreeDimText = { fg = '#858585', bg = 'NONE' },
          NeoTreeCursorLine = { bg = '#37373d' },
          NeoTreeGitModified = { fg = '#29b8db' },
          NeoTreeGitUntracked = { fg = '#23d18b' },
          NeoTreeGitAdded = { fg = '#0dbc79' },
          NeoTreeGitDeleted = { fg = '#f14c4c' },
          NeoTreeGitConflict = { fg = '#f14c4c' },
          NeoTreeGitIgnored = { fg = '#8c8c8c' },
          NeoTreeGitStaged = { fg = '#0dbc79' },
          NeoTreeGitUnstaged = { fg = '#29b8db' },
          NeoTreeGitRenamed = { fg = '#23d18b' },
          NeoTreeWinSeparator = { fg = '#3a3d41', bg = 'NONE' },
          NeoTreeTitleBar = { fg = '#cccccc', bg = '#252526' },

          WhichKeyNormal = { bg = '#252526' },
          WhichKeyBorder = { fg = '#454545', bg = '#252526' },
          WhichKey = { fg = '#3b8eea' },
          WhichKeyGroup = { fg = '#4ec9b0' },
          WhichKeyDesc = { fg = '#cccccc' },
          WhichKeySeparator = { fg = '#585858' },
        },
      })
      vim.cmd.colorscheme('vscode')
    end,
  },
}
