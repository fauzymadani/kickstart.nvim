return {
  {
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
    'neg-serg/neg.nvim',
  },
  {
    'kdheepak/monochrome.nvim',
  },
  {
    'wnkz/monoglow.nvim',
    lazy = false,
    priority = 1500, -- Pastikan ini lebih tinggi dari tema lain
    config = function()
      require('monoglow').setup()
      vim.cmd.colorscheme 'monoglow-lack' -- Pastikan ini dipanggil terakhir
    end,
  },
}
