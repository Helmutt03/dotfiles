return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    config = function(_, opts)
      opts.highlight = opts.highlight or {}
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, { 'bibtex' })
      end
      if type(opts.highlight.disable) == 'table' then
        vim.list_extend(opts.highlight.disable, { 'latex' })
      else
        opts.highlight.disable = { 'latex' }
      end
    end,
  },
}
