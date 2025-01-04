return {
  -- {
  --   'rebelot/kanagawa.nvim',
  --   opts = {
  --     theme = 'dragon',
  --   },
  --   config = function()
  --     vim.cmd.colorscheme 'kanagawa-wave'
  --     -- vim.cmd.colorscheme 'kanagawa-dragon'
  --     -- vim.cmd.colorscheme 'kanagawa-lotus'
  --   end,
  -- },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   config = function()
  --     require('catppuccin').setup {
  --       flavour = 'mocha',
  --     }
  --     vim.cmd.colorscheme 'catppuccin-mocha'
  --   end,
  -- },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration
      vim.g.gruvbox_material_statusline_style = 'mix'
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_transparent_background = '2'
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
}
