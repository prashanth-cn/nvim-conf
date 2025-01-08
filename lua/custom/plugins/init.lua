-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return { -- lazy.nvim
  require 'custom.plugins.themes',
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
  {
    'MagicDuck/grug-far.nvim',
    opts = { headerMaxWidth = 80 },
    cmd = 'GrugFar',
    keys = {
      {
        '<leader>sr',
        function()
          local grug = require 'grug-far'
          local ext = vim.bo.buftype == '' and vim.fn.expand '%:e'
          grug.open {
            transient = true,
            prefills = {
              filesFilter = ext and ext ~= '' and '*.' .. ext or nil,
            },
          }
        end,
        mode = { 'n', 'v' },
        desc = 'Search and Replace',
      },
    },
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'VeryLazy',
    opts = function()
      -- Snacks.toggle({
      --   name = "Indention Guides",
      --   get = function()
      --    return require("ibl.config").get_config(0).enabled
      --   end,
      --   set = function(state)
      --     require("ibl").setup_buffer(0, { enabled = state })
      --   end,
      -- }):map("<leader>ug")
      --
      return {
        indent = {
          char = '▏',
          tab_char = '→',
          smart_indent_cap = true,
        },
        scope = {
          enabled = true,
          char = '▎', -- special character for scope lines
          show_start = true,
          show_end = true,
          show_exact_scope = false,
          injected_languages = true,
          -- highlight = rainbow_highlights, -- use rainbow colors for scope
          priority = 1024,
        },
        exclude = {
          filetypes = {
            'Trouble',
            'alpha',
            'dashboard',
            'help',
            'lazy',
            'mason',
            'neo-tree',
            'notify',
            'snacks_dashboard',
            'snacks_notif',
            'snacks_terminal',
            'snacks_win',
            'toggleterm',
            'trouble',
          },
        },
      }
    end,
    main = 'ibl',
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    'sphamba/smear-cursor.nvim',
    opts = {},
  },
}
