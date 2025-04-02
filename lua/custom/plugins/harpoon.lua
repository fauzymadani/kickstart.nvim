-- File navigation
return {
  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon').setup {
        tabline = false,
        menu = {
          width = vim.api.nvim_win_get_width(0) - 4,
        },
      }

      -- Tabline color
      vim.cmd 'highlight! HarpoonInactive guibg=NONE guifg=#63698c'
      vim.cmd 'highlight! HarpoonActive guibg=NONE guifg=white'
      vim.cmd 'highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7'
      vim.cmd 'highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7'
      vim.cmd 'highlight! TabLineFill guibg=NONE guifg=white'

      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to Harpoon' })
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Open Harpoon menu' })

      vim.keymap.set('n', '<C-h>', function()
        ui.nav_file(1)
      end, { desc = 'Jump to file 1' })
      vim.keymap.set('n', '<C-t>', function()
        ui.nav_file(2)
      end, { desc = 'Jump to file 2' })
      vim.keymap.set('n', '<C-n>', function()
        ui.nav_file(3)
      end, { desc = 'Jump to file 3' })
      vim.keymap.set('n', '<C-s>', function()
        ui.nav_file(4)
      end, { desc = 'Jump to file 4' })
    end,
  },
}
