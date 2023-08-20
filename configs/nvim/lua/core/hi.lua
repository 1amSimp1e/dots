-- ██   ██  █████  ███    ██ ███████  ██████  
-- ██  ██  ██   ██ ████   ██ ██      ██    ██ 
-- █████   ███████ ██ ██  ██ ███████ ██    ██ 
-- ██  ██  ██   ██ ██  ██ ██      ██ ██    ██ 
-- ██   ██ ██   ██ ██   ████ ███████  ██████  

-- General 
-- vim.cmd("hi Normal guibg=#101012")
-- vim.cmd("hi NormalNC guibg=#191919")
vim.cmd("hi FloatBorder guifg=#0F111A")
vim.cmd("hi NormalFloat guibg=#0F111A")

-- cmp completions menu
vim.cmd("hi CmpItemAbbrDeprecated guifg=#3E4450")
vim.cmd("hi CmpItemAbbr guifg=#ADB6DE")
vim.cmd("hi CmpItemAbbrMatchFuzzy guifg=#FCCF67")
vim.cmd("hi CmpItemAbbrMatch guifg=#ADB6DE")
vim.cmd("hi CmpItemKindClass guifg=#E89982")
vim.cmd("hi CmpItemKindColor guifg=#84A0C6")
vim.cmd("hi CmpItemKindConstant guifg=#FF6666")
vim.cmd("hi CmpItemKindConstructor guifg=#5FB0FC")
vim.cmd("hi CmpItemKindEnum guifg=#54CED6")
vim.cmd("hi CmpItemKindEnumMember guifg=#C297B9")
vim.cmd("hi CmpItemKindEvent guifg=#7AAFF3")
vim.cmd("hi CmpItemKindField guifg=#FFE69F")
vim.cmd("hi CmpItemKindFile guifg=#FCCF67")
vim.cmd("hi CmpItemKindFolder guifg=#FCCF67")
vim.cmd("hi CmpItemKindFunction guifg=#BE8FD7")
vim.cmd("hi CmpItemKind guifg=#3E4450")
vim.cmd("hi CmpItemKindInterface guifg=#C397D8")
vim.cmd("hi CmpItemKindKeyword guifg=#66B3FF")
vim.cmd("hi CmpItemKindMethod guifg=#DC7272")
vim.cmd("hi CmpItemKindModule guifg=#5FB0FC")
vim.cmd("hi CmpItemKindOperator guifg=#70C0BA")
vim.cmd("hi CmpItemKindProperty guifg=#54CED6")
vim.cmd("hi CmpItemKindReference guifg=#FB7373")
vim.cmd("hi CmpItemKindSnippet guifg=#FFE59E")
vim.cmd("hi CmpItemKindStruct guifg=#5FB0FC")
vim.cmd("hi CmpItemKindText guifg=#5FB0FC")
vim.cmd("hi CmpItemKindTypeParameter guifg=#FFE49D")
vim.cmd("hi CmpItemKindUnit guifg=#54CED6")
vim.cmd("hi CmpItemKindValue guifg=#79DCAA")
vim.cmd("hi CmpItemKindVariable guifg=#36C692")
vim.cmd("hi CmpItemMenu guifg=#6791C9")

vim.cmd("hi Pmenu guibg=#151519 guifg=#585859")
vim.cmd("hi PmenuSbar guibg=#151519 guifg=#585859")
vim.cmd("hi PmenuSel guibg=#29292D")
vim.cmd("hi PmenuThumb guibg=#151519")

-- Telescope highlighting
vim.cmd("highlight TelescopeMatching gui=bold guifg=#E6CFA1")

vim.cmd("highlight TelescopePreviewBorder guibg=#08090E guifg=#08090E")
vim.cmd("highlight TelescopePreviewLine guibg=#27272C")
vim.cmd("highlight TelescopePreviewNormal guibg=#08090E guifg=#BABABE")
vim.cmd("highlight TelescopePreviewTitle guibg=#6791C9 guifg=#101317")

-- Telescope Prompt
vim.cmd("highlight TelescopePromptBorder guibg=#1F2233 guifg=#1F2233")
vim.cmd("highlight TelescopePromptCounter guibg=#1F2233 gui=bold guifg=#E6CFA1")
vim.cmd("highlight telescopepromptnormal guibg=#1F2233 guifg=#bababe")
vim.cmd("highlight TelescopePromptPrefix guibg=#1F2233 guifg=#6791C9")
vim.cmd("highlight TelescopePromptTitle guibg=#E89982 guifg=#101317")

vim.cmd("highlight TelescopeResultsBorder guibg=#08090E guifg=#08090E")
vim.cmd("highlight TelescopeResultsNormal guibg=#08090E guifg=#BABABE")
vim.cmd("highlight TelescopeResultsTitle guibg=#78B892 guifg=#101317")

vim.cmd("highlight TelescopeSelectionCaret guibg=#27272C guifg=#E89982")
vim.cmd("highlight TelescopeSelection guibg=#1F2233 guifg=#6791C9")

-- Line Numbers
vim.cmd("hi CursorColumn guibg=#101317")
vim.cmd("hi Cursor guibg=#FFFFFF guifg=#101317")
vim.cmd("hi CursorLineFold guibg=#101317 guifg=#70C0BA")
vim.cmd("hi CursorLine guibg=none")
vim.cmd("hi CursorLineNr gui=bold guifg=#FFFFFF")
vim.cmd("hi CursorLineSign guibg=none")

-- Neo Tree Higlights
vim.cmd("hi NvimTreeDirectoryIcon guifg=#BDCBD6")
vim.cmd("hi NvimTreeNormalNC guibg=#111214")
vim.cmd("hi NvimTreeNormal guibg=#161719")
vim.cmd("hi NvimTreeFloatTitle guibg=#84A0C6")
vim.cmd("hi NvimTreeOpenedFolderName guifg=#6791C9")

-- Monark Highlighting
vim.cmd("hi monarkVisual guifg=#6791C9")
vim.cmd("hi monarkInsert guifg=#78B892")
vim.cmd("hi monarkNormal guifg=#E89982")

-- Rnvimr Highlighting
vim.cmd("hi RnvimrNormal guibg=#08090E guifg=#BDCBD6")

-- Notify
vim.cmd('hi NotifyBackground guibg=#08090E guifg=#FFFFFF')

vim.cmd('hi NotifyDEBUGBody guibg=#08090E guifg=#C397D8')
vim.cmd('hi NotifyDEBUGBorder guibg=#08090E guifg=#08090E')
vim.cmd('hi NotifyDEBUGIcon guibg=#08090E guifg=#B77EE0')
vim.cmd('hi NotifyDEBUGTitle guibg=#08090E guifg=#C397D8')
vim.cmd('hi NotifyERRORBody guibg=#08090E guifg=#F87070')
vim.cmd('hi NotifyERRORBorder guibg=#08090E guifg=#08090E')
vim.cmd('hi NotifyERRORIcon guibg=#08090E guifg=#FB7373')
vim.cmd('hi NotifyERRORTitle guibg=#08090E guifg=#F87070')
vim.cmd('hi NotifyINFOBody guibg=#08090E guifg=#82AAFF')
vim.cmd('hi NotifyINFOBorder guibg=#08090E guifg=#08090E')
vim.cmd('hi NotifyINFOIcon guibg=#08090E guifg=#5FB0FC')
vim.cmd('hi NotifyINFOTitle guibg=#08090E guifg=#82AAFF')

vim.cmd('hi NotifyLogTime guifg=#515C68')
vim.cmd('hi NotifyLogTitle guifg=#FB7373')

vim.cmd('hi NotifyTRACEBody guibg=#08090E guifg=#79DCAA')
vim.cmd('hi NotifyTRACEBorder guibg=#08090E guifg=#08090E')
vim.cmd('hi NotifyTRACEIcon guibg=#08090E guifg=#36C692')
vim.cmd('hi NotifyTRACETitle guibg=#08090E guifg=#79DCAA')

vim.cmd('hi NotifyWARNBody guibg=#08090E guifg=#FFE59E')
vim.cmd('hi NotifyWARNBorder guibg=#08090E guifg=#08090E')
vim.cmd('hi NotifyWARNIcon guibg=#08090E guifg=#FCCF67')
vim.cmd('hi NotifyWARNTitle guibg=#08090E guifg=#FFE59E')

-- Indent Blank Line
vim.cmd('hi IndentBlanklineChar guifg=#22272C')
vim.cmd('hi IndentBlanklineContextChar guifg=#7AB0DF')
vim.cmd('hi IndentBlanklineContextStart guibg=#16191F')

-- Lsp Saga
vim.cmd('hi SagaNormal guibg=#1A1C25')

-- Barbeque
vim.cmd('hi barbecue_normal guibg=#090B0F')
