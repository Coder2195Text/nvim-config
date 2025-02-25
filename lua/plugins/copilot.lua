-- @TypeDef LazySpec
return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        panel = {
          auto_refresh = false,
          keymap = {
            accept = "<CR>",
            jump_prev = "[[",
            jump_next = "]]",
            refresh = "gr",
            open = "<M-CR>",
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<M-l>",
            prev = "<M-[>",
            next = "<M-]>",
            dismiss = "<C-]>",
          },
        },
      }
    end,
  },
  {
    -- NOTE: This plugin is in the file because it allows github copilot to be used properly.
    "hrsh7th/nvim-cmp",
    -- override the options table that is used in the `require("cmp").setup()` call
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      local cmp = require "cmp"
      -- modify the mapping part of the table
      opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
        if require("copilot.suggestion").is_visible() then
          require("copilot.suggestion").accept()
        elseif cmp.visible() then
          cmp.select_next_item {
            behavior = cmp.SelectBehavior.Insert,
          }
        elseif (not luasnip == nil) and luasnip.expandable() then
          luasnip.expand()
        elseif (not has_words_before == nil) and has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" })

      -- return the new table to be used
      return opts
    end,
  },
}
