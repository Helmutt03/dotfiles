return {
  {
    'folke/tokyonight.nvim',
    opts = {
      transparent = true,
    },
    {
      'rose-pine/neovim',
      name = 'rose-pine',
      opts = {
        variant = 'auto',
        dark_variant = 'main',
        styles = {
          transparency = true,
        },
      },
      config = function()
        vim.cmd.colorscheme 'rose-pine'
      end,
    },
    {
      'rebelot/kanagawa.nvim',
      opts = {
        theme = 'dragon',
        background = {
          dark = 'dragon',
          light = 'lotus',
        },
      },
      config = function()
        --vim.cmd.colorscheme 'kanagawa-dragon'
      end,
    },
  },
}
