-- @TypeDef LazySpec
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = function() vim.cmd.colorscheme "catppuccin-macchiato" end,
}
