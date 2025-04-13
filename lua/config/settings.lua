local o = vim.o

o.clipboard = "unnamedplus"

-- shiftwidth = 4,
-- tabstop = 4,


o.expandtab = true -- expand tab input with spaces characters
o.smartindent = true -- syntax aware indentations for newline inserts
o.tabstop = 2 -- num of space characters per tab
o.shiftwidth = 2 -- spaces per indentation level

-- Set files that should have been detected but need to be manually set
-- frag and vert as glsl
vim.filetype.add {
  pattern = {
    -- match all files
    [".*%.slint"] = { "slint", { priority = 10 } },
    [".*%.frag"] = { "glsl", { priority = 10 } },
    [".*%.vert"] = { "glsl", { priority = 10 } },
    [".*%.xsession"] = { "conf", { priority = 10 } },
  },
}

vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
-- vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true

vim.g.mapleader = "<Space>"
