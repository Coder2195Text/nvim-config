-- @TypeDef LazySpec
return {

  {
    "williamboman/mason.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "jay-babu/mason-null-ls.nvim",
      "williamboman/mason-lspconfig.nvim",
      "nvimtools/none-ls.nvim",
    },

    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = " ",
            package_pending = "➜ ",
            package_uninstalled = " "
          }
        }
      })
      require("mason-lspconfig").setup()
      require("mason-null-ls").setup({
        handlers = {},
      })
    end
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
  }
}
