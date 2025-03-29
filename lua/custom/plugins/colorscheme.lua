return {
  {
    -- colorscheme
    'scottmckendry/cyberdream.nvim',
    lazy = true,
    priority = 1000,
    opts = {
      italic_comments = true,
      transparent = false,
    },
  },
  {
    'kvrohit/substrata.nvim',
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { italic = false },
        statementStyle = { bold = false },
        typeStyle = {},
        transparent = false,
        dimInactive = true,
        theme = 'dragon',
        colors = {
          theme = { all = { ui = { bg = '#0F0F0F' } } },
        },
      }
      vim.cmd.colorscheme 'kanagawa-dragon'
      vim.cmd [[
  hi Pmenu guibg=#0F0F0F guifg=#D3C6AA
  hi PmenuSel guibg=#89B4FA guifg=#0F0F0F
  hi PmenuSbar guibg=#0F0F0F
  hi PmenuThumb guibg=#89B4FA
]]
    end,
  },
}
