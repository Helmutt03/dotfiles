return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_mappings_disable = { ['n'] = { 'K' } }
    vim.g.vimtex_quickfix_method = vim.fn.executable 'pplatex' == 1 and 'pplatex' or 'latexlog'
    vim.g.vimtex_view_method = 'sioyek'
    vim.g.vimtex_view_sioyek_exe = '/Applications/sioyek.app/Contents/MacOS/sioyek'
  end,
  keys = {
    { '<localleader>l', '', desc = '+vimtex', ft = 'tex' },
  },
}
