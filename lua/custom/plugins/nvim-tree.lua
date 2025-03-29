return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup {}

      local view = require 'nvim-tree.view'

      -- toggle focus
      vim.keymap.set('n', '<leader>e', function()
        if view.is_visible() then
          vim.cmd 'NvimTreeFocus'
        else
          vim.cmd 'NvimTreeToggle'
        end
      end, { desc = 'Toggle & Focus File Explorer' })

      -- close tree
      vim.keymap.set('n', '<leader>q', function()
        if view.is_visible() then
          vim.cmd 'NvimTreeClose'
        end
      end, { desc = 'Close File Explorer' })

      -- back to buffer
      vim.keymap.set('n', '<leader>z', function()
        if view.is_visible() then
          vim.cmd 'wincmd l'
        end
      end, { desc = 'Focus on File Buffer' })
    end,
  },
}
