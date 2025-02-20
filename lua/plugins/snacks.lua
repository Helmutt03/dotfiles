return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      quickfile = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = false },
      words = { enabled = true },
      bufdelete = { enabled = true },
      image = { enabled = true },
      terminal = {
        win = {
          keys = {
            nav_h = { '<C-h>', [[<Cmd>wincmd h<CR>]], desc = 'Go to Left Window', expr = true, mode = 't' },
            nav_j = { '<C-j>', [[<Cmd>wincmd j<CR>]], desc = 'Go to Lower Window', expr = true, mode = 't' },
            nav_k = { '<C-k>', [[<Cmd>wincmd k<CR>]], desc = 'Go to Upper Window', expr = true, mode = 't' },
            nav_l = { '<C-l>', [[<Cmd>wincmd l<CR>]], desc = 'Go to Right Window', expr = true, mode = 't' },
          },
        },
      },
    },
    keys = {
      { '<leader>ft', '<cmd>lua Snacks.terminal.toggle()<cr>', desc = 'Open terminal', mode = 'n', 't' },
      { '<leader>cl', '<cmd>LspInfo<cr>', desc = 'Lsp Info' },
      {
        'K',
        function()
          return vim.lsp.buf.hover()
        end,
        desc = 'Hover',
      },
      { '<leader>ca', vim.lsp.buf.code_action, desc = 'Code Action', mode = { 'n', 'v' } },
      {
        '<leader>cR',
        function()
          Snacks.rename.rename_file()
        end,
        desc = 'Rename File',
        mode = { 'n' },
      },
      { '<leader>cr', vim.lsp.buf.rename, desc = 'Rename' },
      {
        ']]',
        function()
          Snacks.words.jump(vim.v.count1)
        end,
        desc = 'Next Reference',
        function()
          return Snacks.words.is_enabled()
        end,
      },
      {
        '[[',
        function()
          Snacks.words.jump(-vim.v.count1)
        end,
        desc = 'Prev Reference',
        function()
          return Snacks.words.is_enabled()
        end,
      },
      {
        '<a-n>',
        function()
          Snacks.words.jump(vim.v.count1, true)
        end,
        desc = 'Next Reference',
        function()
          return Snacks.words.is_enabled()
        end,
      },
      {
        '<a-p>',
        function()
          Snacks.words.jump(-vim.v.count1, true)
        end,
        desc = 'Prev Reference',
        function()
          return Snacks.words.is_enabled()
        end,
      },
    },
  },
}
