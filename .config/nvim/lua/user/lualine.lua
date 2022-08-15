M = {}
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

-- local lualine_scheme = "darkplus_dark"
local lualine_scheme = "onedarker_alt"

local status_theme_ok, theme = pcall(require, "lualine.themes." .. lualine_scheme)
if not status_theme_ok then
  return
end

-- check if value in table
local function contains(t, value)
  for _, v in pairs(t) do
    if v == value then
      return true
    end
  end
  return false
end

local gray = "#32363e"
local dark_gray = "#282C34"
local dark_gray = "#282C34"
local red = "#D16969"
local blue = "#569CD6"
local green = "#6A9955"
local cyan = "#4EC9B0"
local orange = "#CE9178"
local yellow = "#DCDCAA"
local yellow_orange = "#D7BA7D"
local purple = "#C586C0"

if lualine_scheme == "darkplus_dark" then
  -- gray = "#3e3e3e"
  gray = "#303030"
  dark_gray = "#303030"
  red = "#D16969"
  blue = "#569CD6"
  green = "#6A9955"
  cyan = "#4EC9B0"
  orange = "#CE9178"
  yellow = "#DCDCAA"
  yellow_orange = "#D7BA7D"
  purple = "#C586C0"
end

local sl_hl = vim.api.nvim_get_hl_by_name("StatusLine", true)
local sl_hl_sep = vim.api.nvim_get_hl_by_name("StatusLineSeparator", true)

vim.api.nvim_set_hl(0, "SLGitIcon", { fg = "#E8AB53", bg = dark_gray })
vim.api.nvim_set_hl(0, "SLTermIcon", { fg = purple, bg = gray })
vim.api.nvim_set_hl(0, "SLBranchName", { fg = "#abb2bf", bg = dark_gray, bold = false })
vim.api.nvim_set_hl(0, "SLProgress", { fg = purple, bg = gray })
vim.api.nvim_set_hl(0, "SLLocation", { fg = blue, bg = gray })
vim.api.nvim_set_hl(0, "SLFT", { fg = cyan, bg = gray })
vim.api.nvim_set_hl(0, "SLIndent", { fg = orange, bg = gray })
vim.api.nvim_set_hl(0, "SLLSP", { fg = "#6b727f", bg = sl_hl.background })
vim.api.nvim_set_hl(0, "SLSep", { fg = gray, bg = "NONE" })
vim.api.nvim_set_hl(0, "SLFG", { fg = "#abb2bf", bg = sl_hl.background })
vim.api.nvim_set_hl(0, "SLSeparator", { fg = "#6b727f", bg = sl_hl.background, italic = true })
vim.api.nvim_set_hl(0, "SLError", { fg = "#bf616a", bg = sl_hl.background })
vim.api.nvim_set_hl(0, "SLWarning", { fg = "#D7BA7D", bg = sl_hl.background })
vim.api.nvim_set_hl(0, "SLCopilot", { fg = "#6CC644", bg = sl_hl.background })

local hl_str = function(str, hl)
  return "%#" .. hl .. "#" .. str .. "%*"
end

local mode_color = {
  n = "#519fdf",
  i = "#c18a56",
  v = "#b668cd",
  [""] = "#b668cd",
  V = "#b668cd",
  -- c = '#B5CEA8',
  -- c = '#D7BA7D',
  c = "#46a6b2",
  no = "#D16D9E",
  s = "#88b369",
  S = "#c18a56",
  [""] = "#c18a56",
  ic = "#d05c65",
  R = "#D16D9E",
  Rv = "#d05c65",
  cv = "#519fdf",
  ce = "#519fdf",
  r = "#d05c65",
  rm = "#46a6b2",
  ["r?"] = "#46a6b2",
  ["!"] = "#46a6b2",
  t = "#d05c65",
}

local left_pad = {
  function()
    return " "
  end,
  padding = 0,
  color = function()
    return { fg = gray }
  end,
}

local right_pad = {
  function()
    return " "
  end,
  padding = 0,
  color = function()
    return { fg = dark_gray }
  end,
}

local left_pad_alt = {
  function()
    return " "
  end,
  padding = 0,
  color = function()
    return { fg = gray }
  end,
}

local right_pad_alt = {
  function()
    return " "
  end,
  padding = 0,
  color = function()
    return { fg = gray }
  end,
}

local mode = {
  -- mode component
  function()
    -- return "▊"
    return " "
    -- return "  "
  end,
  color = function()
    -- auto change color according to neovims mode
    return { fg = mode_color[vim.fn.mode()], bg = gray }
  end,
  padding = 0,
}

local hide_in_width_60 = function()
  return vim.o.columns > 60
end

local hide_in_width = function()
  return vim.o.columns > 80
end

local hide_in_width_100 = function()
  return vim.o.columns > 100
end


local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = {
    error = "%#SLError#" .. "" .. "%*" .. " ",
    warn = "%#SLWarning#" .. "" .. "%*" .. " ",
  },
  colored = false,
  update_in_insert = false,
  always_visible = true,
  padding = 0,
}

local diff = {
  "diff",
  colored = false,
  symbols = { added = "", modified = "", removed = ""}, -- changes diff symbols
  cond = hide_in_width_60,
  separator = "%#SLSeparator#" .. "│ " .. "%*",
}

local filetype = {
  "filetype",
  fmt = function(str)
    local ui_filetypes = {
      "help",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "lir",
      "Outline",
      "spectre_panel",
      "toggleterm",
      "DressingSelect",
      "",
      "nil",
    }

    local return_val = function(str)
      return hl_str(" ", "SLSep") .. hl_str(str, "SLFT") .. hl_str("", "SLSep")
    end

    if str == "TelescopePrompt" then
      return return_val(" ")
    end

    local function get_term_num()
      local t_status_ok, toggle_num = pcall(vim.api.nvim_buf_get_var, 0, "toggle_number")
      if not t_status_ok then
        return ""
      end
      return toggle_num
    end

    if str == "toggleterm" then
      -- 
      local term = "%#SLTermIcon#" .. " " .. "%*" .. "%#SLFT#" .. get_term_num() .. "%*"

      return return_val(term)
    end

    if contains(ui_filetypes, str) then
      return ""
    else
      return return_val(str)
    end
  end,
  icons_enabled = false,
  padding = 0,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "%#SLGitIcon#" .. " " .. "%*" .. "%#SLBranchName#",
  -- color = "Constant",
  colored = false,
  padding = 0,
  -- cond = hide_in_width_100,
  fmt = function(str)
    if str == "" or str == nil then
      return "!=vcs"
    end

    return str
  end,
}

local progress = {
  "progress",
  fmt = function(str)
    -- return "▊"
    return hl_str("", "SLSep") .. hl_str("%P/%L", "SLProgress") .. hl_str(" ", "SLSep")
    -- return "  "
  end,
  -- color = "SLProgress",
  padding = 0,
}

local current_signature = {
  function()
    local buf_ft = vim.bo.filetype

    if buf_ft == "toggleterm" or buf_ft == "TelescopePrompt" then
      return ""
    end
    if not pcall(require, "lsp_signature") then
      return ""
    end
    local sig = require("lsp_signature").status_line(30)
    local hint = sig.hint

    if not require("user.functions").isempty(hint) then
      -- return "%#SLSeparator#│ : " .. hint .. "%*"
      -- return "%#SLSeparator#│ " .. hint .. "%*"
      return "%#SLSeparator# " .. hint .. "%*"
    end

    return ""
  end,
  cond = hide_in_width_100,
  padding = 0,
}

-- cool function for progress
-- local progress = function()
--   local current_line = vim.fn.line "."
--   local total_lines = vim.fn.line "$"
--   local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
--   local line_ratio = current_line / total_lines
--   local index = math.ceil(line_ratio * #chars)
--   -- return chars[index]
--   return "%#SLProgress#" .. chars[index] .. "%*"
-- end

local spaces = {
  function()
    local buf_ft = vim.bo.filetype

    local ui_filetypes = {
      "help",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "lir",
      "Outline",
      "spectre_panel",
      "DressingSelect",
      "",
    }
    local space = ""

    if contains(ui_filetypes, buf_ft) then
      space = " "
    end

    local shiftwidth = vim.api.nvim_buf_get_option(0, "shiftwidth")

    if shiftwidth == nil then
      return ""
    end

    -- TODO: update codicons and use their indent
    return hl_str(" ", "SLSep") .. hl_str(" " .. shiftwidth .. space, "SLIndent") .. hl_str("", "SLSep")
  end,
  padding = 0,
  -- separator = "%#SLSeparator#" .. " │" .. "%*",
  -- cond = hide_in_width_100,
}

local lanuage_server = {
  function()
    local buf_ft = vim.bo.filetype
    local ui_filetypes = {
      "help",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "lir",
      "Outline",
      "spectre_panel",
      "toggleterm",
      "DressingSelect",
      "TelescopePrompt",
      "lspinfo",
      "lsp-installer",
      "",
    }

    if contains(ui_filetypes, buf_ft) then
      if M.language_servers == nil then
        return ""
      else
        return M.language_servers
      end
    end

    local clients = vim.lsp.buf_get_clients()
    local client_names = {}
    local copilot_active = false

    -- add client
    for _, client in pairs(clients) do
      if client.name ~= "copilot" and client.name ~= "null-ls" then
        table.insert(client_names, client.name)
      end
      if client.name == "copilot" then
        copilot_active = true
      end
    end

    -- add formatter
    local s = require "null-ls.sources"
    local available_sources = s.get_available(buf_ft)
    local registered = {}
    for _, source in ipairs(available_sources) do
      for method in pairs(source.methods) do
        registered[method] = registered[method] or {}
        table.insert(registered[method], source.name)
      end
    end

    local formatter = registered["NULL_LS_FORMATTING"]
    local linter = registered["NULL_LS_DIAGNOSTICS"]
    if formatter ~= nil then
      vim.list_extend(client_names, formatter)
    end
    if linter ~= nil then
      vim.list_extend(client_names, linter)
    end

    -- join client names with commas
    local client_names_str = table.concat(client_names, ", ")

    -- check client_names_str if empty
    local language_servers = ""
    local client_names_str_len = #client_names_str
    if client_names_str_len ~= 0 then
      language_servers = hl_str("", "SLSep") .. hl_str(client_names_str, "SLSeparator") .. hl_str("", "SLSep")
    end
    -- if copilot_active then
    --   language_servers = language_servers .. "%#SLCopilot#" .. " " .. " " .. "%*"
    -- end

    if client_names_str_len == 0 and not copilot_active then
      return ""
    else
      M.language_servers = language_servers
      return language_servers:gsub(", anonymous source", "")
    end
  end,
  padding = 0,
  cond = hide_in_width,
  -- separator = "%#SLSeparator#" .. " │" .. "%*",
}

local location = {
  "location",
  fmt = function(str)
    -- return "▊"
    return hl_str(" ", "SLSep") .. hl_str(str, "SLLocation") .. hl_str(" ", "SLSep")
    -- return "  "
  end,
  padding = 0,
}

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    -- theme = "auto",
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { left_pad, mode, branch, right_pad },
    lualine_b = { left_pad_alt, diagnostics, right_pad_alt },
    -- lualine_c = {},
    lualine_c = { current_signature },
    -- lualine_x = { diff, spaces, "encoding", filetype },
    -- lualine_x = { diff, lanuage_server, spaces, filetype },
    -- lualine_x = { lanuage_server, spaces, filetype },
    lualine_x = { lanuage_server, spaces, filetype },
    lualine_y = {},
    lualine_z = { location, progress },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}

