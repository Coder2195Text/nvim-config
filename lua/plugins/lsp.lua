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
