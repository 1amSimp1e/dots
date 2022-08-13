local status_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
  return
end

nvim_web_devicons.set_icon {
  sh = {
    icon = "",
    color = "#1DC123",
    cterm_color = "61",
    name = "Sy",
  },
  ["py"] = {
    icon = "",
    color = "#519BB7",
    cterm_color = "59",
    name = "Py",
  },
  -- ["js"] = {
  --   icon = "",
  --   color = "#cbcb41",
  --   cterm_color = "185",
  --   name = "Js",
  -- },
  -- ["ts"] = {
  --   icon = "ﯤ",
  --   color = "#519aba",
  --   cterm_color = "67",
  --   name = "Ts",
  -- },
  [".gitattributes"] = {
    icon = "",
    color = "#e24329",
    cterm_color = "59",
    name = "GitAttributes",
  },
  [".gitconfig"] = {
    icon = "",
    color = "#e24329",
    cterm_color = "59",
    name = "GitConfig",
  },
  [".gitignore"] = {
    icon = "",
    color = "#e24329",
    cterm_color = "59",
    name = "GitIgnore",
  },
  [".gitlab-ci.yml"] = {
    icon = "",
    color = "#e24329",
    cterm_color = "166",
    name = "GitlabCI",
  },
  [".gitmodules"] = {
    icon = "",
    color = "#e24329",
    cterm_color = "59",
    name = "GitModules",
  },
  ["diff"] = {
    icon = "",
    color = "#e24329",
    cterm_color = "59",
    name = "Diff",
  },
}
