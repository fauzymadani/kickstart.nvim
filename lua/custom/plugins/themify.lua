return {
  {
    'lmantw/themify.nvim',

    lazy = false,
    priority = 999,

    config = function()
      require('themify').setup {
        -- Your list of colorschemes.

        -- Built-in colorschemes are also supported.
        -- (Also works with any colorschemes that are installed via other plugin manager, just make sure the colorscheme is loaded before Themify is loaded.)
        'default',
        'monoglow-lack',
        'monochrome',
        'vesper',
        'no-clown-fiesta',
        'vague',
        'templeos',
        'lackluster',
        'noir',
      }
    end,
  },
}
