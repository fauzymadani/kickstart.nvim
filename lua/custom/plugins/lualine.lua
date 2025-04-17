return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'rebelot/kanagawa.nvim' },
  event = 'VeryLazy',
  config = function()
    -- Ambil warna setelah setup

    --  load theme
    -- require('lualine').setup {
    --  options = {
    --    theme = kanagawa_dragon,
    --    section_separators = { left = '', right = '' },
    --    component_separators = '',
    --  },
    --  sections = {
    --    lualine_a = { { 'mode', separator = { left = ' ', right = '' } } },
    --    lualine_b = { { 'branch', icon = '' } },
    --    lualine_c = { 'filename' },
    --    lualine_x = { 'diagnostics', 'encoding', 'filetype' },
    --    lualine_y = { 'progress' },
    --    lualine_z = { { 'location', separator = { left = '', right = ' ' } } },
    --  },
    -- }
  end,
}
