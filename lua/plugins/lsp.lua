vim.diagnostic.config({
  virtual_text = {
    prefix = "● ",
  },
  severity_sort = true,
  update_in_insert = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },
})
return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },
}
