return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {
        options = {
          separator_style = 'sloped',
          diagnostics = 'nvim_lsp',
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          enforce_regular_tabs = false,
          always_show_bufferline = true,
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
