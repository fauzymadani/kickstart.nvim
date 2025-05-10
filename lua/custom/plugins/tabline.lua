return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {
        highlights = {
          fill = {
            fg = '#ffffff',
            bg = '#0E0E0E', -- warna bg area kosong bufferline
          },
          background = {
            fg = '#ffffff',
            bg = '#0E0E0E', -- warna bg buffer normal
          },
          tab = {
            bg = '#0E0E0E',
          },
          tab_selected = {
            fg = '#c1c1c1', -- warna text tab aktif
            bg = '#111113', -- warna bg tab yang lagi aktif
            bold = true,
          },
          buffer_selected = {
            fg = '#c1c1c1',
            bg = '#111113',
            bold = true,
          },
          buffer_visible = {
            fg = '#c1c1c1',
            bg = '#0E0E0E',
          },
        },
        options = {
          mode = 'buffers',
          separator_style = 'thin',
          diagnostics = 'nvim_lsp',
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          enforce_regular_tabs = false,
          always_show_bufferline = true,
          themable = true,
        },
      }
    end,
  },
  {
    'backdround/tabscope.nvim',
    config = function()
      -- Initialize tabscope
      require('tabscope').setup {
        show_all_buffers = true,
        use_devicons = true,
      }

      -- To remove tab local buffer, use remove_tab_buffer:
      vim.keymap.set('n', '<M-o>', require('tabscope').remove_tab_buffer)
    end,
  },
}
