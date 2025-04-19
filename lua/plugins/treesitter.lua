-- @TypeDef LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  main = "nvim-treesitter.configs",
  dependencies = { { "nvim-treesitter/nvim-treesitter-textobjects", lazy = true } },
  event = "VeryLazy",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
}
