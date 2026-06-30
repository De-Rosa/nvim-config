return {
  -- Render markdown beautifully in-buffer (headers, bullets, code blocks, etc.)
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

  -- Live browser preview (opens in your default browser, auto-refreshes on save)
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreview', 'MarkdownPreviewStop', 'MarkdownPreviewToggle' },
    ft = { 'markdown' },
    build = 'cd app && npm install',
    keys = {
      { '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', desc = 'Markdown Preview (browser)' },
    },
    config = function()
      vim.g.mkdp_auto_close     = 1   -- close preview when buffer closes
      vim.g.mkdp_refresh_slow   = 0   -- live refresh
      vim.g.mkdp_browser        = ''  -- use system default browser
      vim.g.mkdp_theme          = 'dark'
      vim.g.mkdp_page_title     = '${name}'
    end,
  },

  -- Distraction-free writing mode (centres content, hides UI clutter)
  {
    'folke/zen-mode.nvim',
    cmd = 'ZenMode',
    keys = {
      { '<leader>mz', '<cmd>ZenMode<cr>', desc = 'Zen Mode (focus writing)' },
    },
    opts = {
      window = {
        backdrop = 0.92,
        width    = 90,
        height   = 1,
        options  = {
          signcolumn    = 'no',
          number        = false,
          relativenumber = false,
          cursorline    = false,
          foldcolumn    = '0',
        },
      },
      plugins = {
        twilight  = { enabled = true }, -- dim inactive paragraphs
        gitsigns  = { enabled = false },
        tmux      = { enabled = false },
      },
    },
  },

  -- Dim everything except the current paragraph/block
  {
    'folke/twilight.nvim',
    cmd = { 'Twilight', 'TwilightEnable', 'TwilightDisable' },
    keys = {
      { '<leader>mt', '<cmd>Twilight<cr>', desc = 'Twilight (dim inactive text)' },
    },
    opts = {
      dimming = { alpha = 0.35 },
      context = 12,
      expand  = { 'function', 'method', 'table', 'if_statement' },
    },
  },
}
