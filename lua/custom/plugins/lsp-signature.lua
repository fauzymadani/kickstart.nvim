return {
  {
    'ray-x/lsp_signature.nvim',
    event = 'InsertEnter',
    opts = {
      -- cfg options
    },
    config = function()
      local cfg = { bind = true, handler_opts = {
        border = 'rounded',
      } } -- add your config here
      require('lsp_signature').setup(cfg)
    end,
  },
}
