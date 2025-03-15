-- shiftwidth = 4,
-- tabstop = 4,
local o = vim.o

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
-- @TypeDef LazySpec
return {}
