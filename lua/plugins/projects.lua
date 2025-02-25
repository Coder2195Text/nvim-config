-- @TypeDef LazySpec
return {
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {}
      require("telescope").load_extension "projects"
    end,
    event = "VeryLazy",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
}
