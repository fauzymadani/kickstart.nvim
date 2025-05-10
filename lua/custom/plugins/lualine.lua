return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  config = function()
    local e_ink = {
      normal = {
        a = { fg = '#0e0e0e', bg = '#c2c2c2', gui = 'bold' },
        b = { fg = '#c2c2c2', bg = '#3d3d3d' },
        c = { fg = '#c2c2c2', bg = '#0e0e0e' },
      },
      insert = {
        a = { fg = '#0e0e0e', bg = '#b8b8b8', gui = 'bold' },
        b = { fg = '#b8b8b8', bg = '#3d3d3d' },
        c = { fg = '#c2c2c2', bg = '#0e0e0e' },
      },
      visual = {
        a = { fg = '#0e0e0e', bg = '#7c7c7c', gui = 'bold' },
        b = { fg = '#c2c2c2', bg = '#3d3d3d' },
        c = { fg = '#c2c2c2', bg = '#0e0e0e' },
      },
      replace = {
        a = { fg = '#0e0e0e', bg = '#868686', gui = 'bold' },
        b = { fg = '#c2c2c2', bg = '#3d3d3d' },
        c = { fg = '#c2c2c2', bg = '#0e0e0e' },
      },
      inactive = {
        a = { fg = '#c2c2c2', bg = '#0e0e0e' },
        b = { fg = '#c2c2c2', bg = '#0e0e0e' },
        c = { fg = '#a4a4a4', bg = '#0e0e0e' },
      },
    }

    require('lualine').setup {
      options = {
        theme = e_ink,
        icons_enabled = false,
        section_separators = '',
        component_separators = '',
        disabled_filetypes = { 'NvimTree', 'neo-tree' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = {
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            sections = { 'error', 'warn', 'info', 'hint' },
            symbols = {
              error = ' ', -- nf-fa-times_circle
              warn = ' ', -- nf-fa-exclamation_triangle
              info = ' ', -- nf-fa-info_circle
              hint = ' ', -- nf-fa-lightbulb_o
            },

            colored = false,
            update_in_insert = false,
            always_visible = true,
          },
          'fileformat',
          'filetype',
        },
        lualine_y = {},
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {},
    }
  end,
}
