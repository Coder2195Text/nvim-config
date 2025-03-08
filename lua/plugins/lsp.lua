-- Set files that should have been detected but need to be manually set
-- frag and vert as glsl

vim.filetype.add {
  pattern = {
    -- match all files
    [".*%.slint"] = { "slint", { priority = 10 } },
    [".*%.frag"] = { "glsl", { priority = 10 } },
    [".*%.vert"] = { "glsl", { priority = 10 } },
  },
}
-- @TypeDef LazySpec
return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local lspconfig = require "lspconfig"

      lspconfig.graphql.setup {
        -- absolute path to compiled cli
        cmd = {
          "~/.config/nvim/graphiql/packages/graphql-language-service-cli/bin/graphql.js",
          "server",
          "-m",
          "stream",
        },
        -- I do not need it in other filetypes, adjust for your needs
        filetypes = { "graphql" },
        root_dir = lspconfig.util.root_pattern(".git", ".graphqlrc*", ".graphql.config.*", "graphql.config.*"),
      }
    end,
  },
}
