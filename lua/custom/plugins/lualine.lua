return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'rebelot/kanagawa.nvim' },
  event = 'VeryLazy',
  config = function()
    -- Load Kanagawa Dragon
    local kanagawa = require 'kanagawa'
    kanagawa.setup { theme = 'dragon' }
    vim.cmd.colorscheme 'kanagawa-dragon'

    -- Ambil warna setelah setup
    local kanagawa_colors = require('kanagawa.colors').setup()

    -- Custom tema untuk Lualine
    local kanagawa_dragon = {
      normal = {
        a = { bg = kanagawa_colors.palette.dragonBlue, fg = kanagawa_colors.palette.sumiInk1 },
        b = { bg = kanagawa_colors.palette.sumiInk3, fg = kanagawa_colors.palette.dragonBlue },
        c = { bg = kanagawa_colors.palette.sumiInk4, fg = kanagawa_colors.palette.fujiWhite },
      },
      insert = {
        a = { bg = kanagawa_colors.palette.springGreen, fg = kanagawa_colors.palette.sumiInk1 },
        b = { bg = kanagawa_colors.palette.sumiInk3, fg = kanagawa_colors.palette.springGreen },
      },
      visual = {
        a = { bg = kanagawa_colors.palette.oniViolet, fg = kanagawa_colors.palette.sumiInk1 },
        b = { bg = kanagawa_colors.palette.sumiInk3, fg = kanagawa_colors.palette.oniViolet },
      },
      replace = {
        a = { bg = kanagawa_colors.palette.samuraiRed, fg = kanagawa_colors.palette.sumiInk1 },
        b = { bg = kanagawa_colors.palette.sumiInk3, fg = kanagawa_colors.palette.samuraiRed },
      },
      command = {
        a = { bg = kanagawa_colors.palette.roninYellow, fg = kanagawa_colors.palette.sumiInk1 },
        b = { bg = kanagawa_colors.palette.sumiInk3, fg = kanagawa_colors.palette.roninYellow },
      },
      inactive = {
        a = { bg = kanagawa_colors.palette.sumiInk2, fg = kanagawa_colors.palette.dragonGray },
        b = { bg = kanagawa_colors.palette.sumiInk3, fg = kanagawa_colors.palette.dragonGray },
        c = { bg = kanagawa_colors.palette.sumiInk4, fg = kanagawa_colors.palette.dragonGray },
      },
    }

    --  load theme
    require('lualine').setup {
      options = {
        theme = kanagawa_dragon,
        section_separators = { left = '', right = '' },
        component_separators = '',
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = ' ', right = '' } } },
        lualine_b = { { 'branch', icon = '' } },
        lualine_c = { 'filename' },
        lualine_x = { 'diagnostics', 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { { 'location', separator = { left = '', right = ' ' } } },
      },
    }
  end,
}
