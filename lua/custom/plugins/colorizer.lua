return {
  {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        event = 'BufEnter',
        filetypes = { '*' },
        DEFAULT_OPTIONS = {
          names = true, -- Aktifin buat Tailwind
          RGB = true,
          RRGGBB = true,
          rgb_fn = true,
          hsl_fn = true,
          css = true,
          css_fn = true,
          mode = 'background',
        },
      }
    end,
  },
}
