return {
  {
    'nvzone/typr',
    dependencies = 'nvzone/volt',
    opts = {},
    keys = {
      { '<leader>tt', '<cmd>Typr<cr>', desc = 'Typer trainer' },
      { '<leader>ts', '<cmd>TyprStats<cr>', desc = 'Typer stats' },
    },
    cmd = { 'Typr', 'TyprStats' },
  },
}
