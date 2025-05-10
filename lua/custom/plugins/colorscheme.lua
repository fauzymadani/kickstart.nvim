return {
  {
    'scottmckendry/cyberdream.nvim',
    lazy = true,
    priority = 1000,
    opts = {
      italic_comments = true,
      transparent = false,
    },
  },
  {
    'kvrohit/substrata.nvim',
  },
  {
    'neg-serg/neg.nvim',
  },
  {
    'kdheepak/monochrome.nvim',
  },

  {
    'wnkz/monoglow.nvim',
    lazy = false,
    priority = 1500, -- Pastikan ini lebih tinggi dari tema lain
    config = function()
      require('monoglow').setup()
      vim.cmd.colorscheme 'vesper' -- Pastikan ini dipanggil terakhir
    end,
  },
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = false,
    priority = 1000,
    config = function()
      require('moonfly').custom_colors {
        bg = '#0E0E0E',
      }
    end,
  },
  -- Lazy
  {
    'vague2k/vague.nvim',
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require('vague').setup {
        -- optional configuration here
        colors = {
          bg = '#0E0E0E',
        },
      }
    end,
  },
  {
    'rockerBOO/boo-colorscheme-nvim',
  },
  {
    'aktersnurra/no-clown-fiesta.nvim',
    config = function()
      require('no-clown-fiesta').setup {
        transparent = false, -- Enable this to disable the bg color
        styles = {
          -- You can set any of the style values specified for `:h nvim_set_hl`
          bg = '#0E0E0E',
        },
      }
    end,
  },
  -- Or with configuration
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup {
        -- ...
      }
    end,
  },
  {
    'datsfilipe/vesper.nvim',
    config = function()
      require('vesper').setup {
        transparent = false, -- Boolean: Sets the background to transparent
        italics = {
          comments = true, -- Boolean: Italicizes comments
          keywords = true, -- Boolean: Italicizes keywords
          functions = true, -- Boolean: Italicizes functions
          strings = true, -- Boolean: Italicizes strings
          variables = true, -- Boolean: Italicizes variables
        },
        overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {},
      }
    end,
  },
  {
    'lunarvim/templeos.nvim',
  },
  -- example lazy.nvim install setup
  {
    'slugbyte/lackluster.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      -- vim.cmd.colorscheme 'lackluster'
      vim.cmd.colorscheme 'lackluster-hack' -- my favorite
      -- vim.cmd.colorscheme("lackluster-mint")
    end,
  },
  -- Using Lazy
  {
    'webhooked/kanso.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    'dzfrias/noir.nvim',
    lazy = false,
    priority = 1000,
  },
}
