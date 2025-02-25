-- @TypeDef LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode,
        i = {
          ["<F8>"] = {
            "<Esc><cmd>:AerialToggle<cr>",
            desc = "Toggle Symbols Outline",
          },
          ["<S-Tab>"] = { "<Esc><cmd>bnext<cr>", desc = "Next Buffer" },
          ["<C-a>"] = { "<Esc>ggVGi", desc = "Select All" },
          ["<C-s>"] = { "<Esc><cmd>w!<cr>", desc = "Force write" },
        },
        n = {
          ["<F8>"] = {
            "<cmd>:AerialToggle<cr>",
            desc = "Toggle Symbols Outline",
          },
          -- open config file
          ["<leader>v"] = { name = " CoderVim" },
          ["<leader>vc"] = {
            "<cmd>:e /home/coder2195/.config/nvim/init.lua<cr>",
            desc = "Open CoderVim Config",
          },
          ["<leader>s"] = {
            "<cmd>:AerialToggle<cr>",
            desc = "Toggle Symbols Outline",
          },
          ["<S-Tab>"] = { "<Esc><cmd>bnext<cr>", desc = "Next Buffer" },
          ["<C-a>"] = { "ggVG", desc = "Select All" },
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<leader>bc"] = {
            "<cmd>BufferLinePickClose<cr>",
            desc = "Pick to close",
          },
          ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
          ["<leader>bt"] = {
            "<cmd>BufferLineSortByTabs<cr>",
            desc = "Sort by tabs",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<leader>b"] = { name = "Buffers" },
          ["<leader>T"] = { name = "Telescope" },
          ["<leader>Tc"] = {
            "<cmd>Telescope colorscheme<cr>",
            desc = "Set colorscheme",
          },
          ["<leader>Tp"] = {
            "<cmd>Telescope projects<cr>",
            desc = "Open project",
          },
          ["<leader>vu"] = { "<cmd>:Lazy update<cr>", desc = "Update plugins" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          ["<Esc>"] = { "<C-\\><C-n>", desc = "Terminal Escape" },
        },
      },
    },
  },
}
