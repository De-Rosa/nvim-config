return {
  -- render in buffer
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    ft = { 'markdown', 'md' },
    opts = {
      enabled = true,
      render_modes = { 'n', 'c' }, -- render in normal & command mode
      heading = {
        enabled = true,
        -- Decorative icons per heading level
        icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
        signs = { '󰫎 ' },
        width = 'full',
        backgrounds = {
          'RenderMarkdownH1Bg',
          'RenderMarkdownH2Bg',
          'RenderMarkdownH3Bg',
          'RenderMarkdownH4Bg',
          'RenderMarkdownH5Bg',
          'RenderMarkdownH6Bg',
        },
        foregrounds = {
          'RenderMarkdownH1',
          'RenderMarkdownH2',
          'RenderMarkdownH3',
          'RenderMarkdownH4',
          'RenderMarkdownH5',
          'RenderMarkdownH6',
        },
      },
      bullet = {
        enabled = true,
        icons = { '●', '○', '◆', '◇' }, -- nested bullet styles
      },
      checkbox = {
        enabled = true,
        unchecked = { icon = '󰄱 ' },
        checked   = { icon = '󰱒 ' },
      },
      code = {
        enabled = true,
        style = 'full',   -- 'full' adds a background block; use 'normal' for minimal
        width = 'block',
        border = 'thin',
      },
      dash = { enabled = true, icon = '─', width = 'full' },
      quote = { enabled = true, icon = '▋' },
      table = {
        enabled = true,
        style = 'full',
        border = {
          '┌', '┬', '┐',
          '├', '┼', '┤',
          '└', '┴', '┘',
          '│', '─',
        },
      },
      link = {
        enabled = true,
        image = '󰥶 ',
        hyperlink = '󰌹 ',
        custom = {
          web = { pattern = '^http', icon = '󰖟 ' },
        },
      },
    },
  },

  -- render using preview
  {
    "selimacerbas/markdown-preview.nvim",
    dependencies = { "selimacerbas/live-server.nvim" },
    config = function()
      require("markdown_preview").setup({
        instance_mode = "takeover",  -- "takeover" (one tab) or "multi" (tab per instance)
        port = 0,                    -- 0 = auto (8421 for takeover, OS-assigned for multi)
        open_browser = true,
        default_theme = "dark",      -- "dark" or "light"; initial preview theme
        debounce_ms = 300,
      })
    end,
  }
}
