return {
  {
    'catppuccin/nvim',
    opts = {
      transparent_background = true,
    },
    priority = 1000, 
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
    
  },
}
