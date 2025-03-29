return {
  {
    'nvim-tree/nvim-web-devicons', -- Ini tetap ada, tapi nggak perlu dependencies
    config = function()
      require('nvim-web-devicons').setup()
    end,
  },
}
