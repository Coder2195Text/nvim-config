-- @TypeDef LazySpec
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " ▄████▄   ▒█████  ▓█████▄ ▓█████  ██▀███   ██▒   █▓ ██▓ ███▄ ▄███▓",
        "▒██▀ ▀█  ▒██▒  ██▒▒██▀ ██▌▓█   ▀ ▓██ ▒ ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
        "▒▓█    ▄ ▒██░  ██▒░██   █▌▒███   ▓██ ░▄█ ▒ ▓██  █▒░▒██▒▓██    ▓██░",
        "▒▓▓▄ ▄██▒▒██   ██░░▓█▄   ▌▒▓█  ▄ ▒██▀▀█▄    ▒██ █░░░██░▒██    ▒██ ",
        "▒ ▓███▀ ░░ ████▓▒░░▒████▓ ░▒████▒░██▓ ▒██▒   ▒▀█░  ░██░▒██▒   ░██▒",
        "░ ░▒ ▒  ░░ ▒░▒░▒░  ▒▒▓  ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░   ░ ▐░  ░▓  ░ ▒░   ░  ░ ",
        "  ░  ▒     ░ ▒ ▒░  ░ ▒  ▒  ░ ░  ░  ░▒ ░ ▒░   ░ ░░   ▒ ░░  ░      ░",
        "░        ░ ░ ░ ▒   ░ ░  ░    ░     ░░   ░      ░░   ▒ ░░      ░   ",
        "░ ░          ░ ░     ░       ░  ░   ░           ░   ░         ░   ",
      }
      local button = opts.button
      -- add a button to update plugins

      opts.section.buttons.val = {
        button("LDR n", "  New File  "),
        button("LDR f f", "  Find File  "),
        button("LDR f o", "  Recents  "),
        button("LDR T p", "  Projects  "),
        button("LDR v c", "  Edit Config  "),
        button("LDR v u", "  Update  "),
        button("LDR q", "  Quit Neovim"),
      }

      return opts
    end,
  },
}
