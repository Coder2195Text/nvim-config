-- @TypeDef LazySpec
return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = {
      "zbirenbaum/copilot.lua",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("copilot_cmp").setup()
      local cmp = require "cmp"
      -- modify the mapping part of the table

      local config = cmp.get_config()
      table.insert(config.sources, 1, { name = "copilot", group_index = 2 })
      cmp.setup(config)
    end,
  },
}
