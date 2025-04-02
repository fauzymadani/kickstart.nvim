return {
  {
    'b0o/incline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local devicons = require 'nvim-web-devicons'
      require('incline').setup {
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
          if filename == '' then
            filename = '[No Name]'
          end
          local ft_icon, ft_color = devicons.get_icon_color(filename)

          local function get_git_diff()
            local icons = { removed = ' ', changed = ' ', added = ' ' }
            local signs = vim.b[props.buf].gitsigns_status_dict
            local labels = {}
            if signs then
              for name, icon in pairs(icons) do
                if tonumber(signs[name]) and signs[name] > 0 then
                  table.insert(labels, { icon .. signs[name] .. ' ', group = 'Diff' .. name })
                end
              end
              if #labels > 0 then
                table.insert(labels, { '┊ ' })
              end
            end
            return labels
          end

          local function get_diagnostic_label()
            local icons = { error = ' ', warn = ' ', info = ' ', hint = ' ' }
            local label = {}

            for severity, icon in pairs(icons) do
              local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
              if n > 0 then
                table.insert(label, { icon .. n .. ' ', group = 'DiagnosticSign' .. severity })
              end
            end
            if #label > 0 then
              table.insert(label, { '┊ ' })
            end
            return label
          end

          -- Menampilkan mode Neovim (Normal, Insert, Visual, dll.)
          local mode_color = {
            n = '#1c1c1c',
            i = '#7AA2F7',
            v = '#F7768E',
            V = '#F7768E',
            c = '#E6B450',
            s = '#ffffff',
            S = '#ffffff',
            R = '#F78C6C',
          }

          local mode = vim.api.nvim_get_mode().mode
          local mode_display = { ' ' .. mode:upper() .. ' ', guibg = mode_color[mode] or 'White', gui = 'bold' }

          -- Menampilkan posisi cursor (baris & kolom)
          local cursor_pos = { ' ' .. vim.fn.line '.' .. ':' .. vim.fn.col '.' .. ' ', guibg = 'Grey', gui = 'bold' }

          return {
            { mode_display },
            { '┊ ' },
            -- { get_diagnostic_label() },
            { get_git_diff() },
            { (ft_icon or '') .. ' ', guifg = ft_color, guibg = 'none' },
            { filename .. ' ', gui = vim.bo[props.buf].modified and 'bold,italic' or 'bold' },
            { cursor_pos },
            { '┊  ' .. vim.api.nvim_win_get_number(props.win), group = 'DevIconWindows' },
          }
        end,
      }
    end,
  },
}
