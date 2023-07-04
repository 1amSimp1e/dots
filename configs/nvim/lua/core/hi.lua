-- ██   ██  █████  ███    ██ ███████  ██████  
-- ██  ██  ██   ██ ████   ██ ██      ██    ██ 
-- █████   ███████ ██ ██  ██ ███████ ██    ██ 
-- ██  ██  ██   ██ ██  ██ ██      ██ ██    ██ 
-- ██   ██ ██   ██ ██   ████ ███████  ██████  


-- General 
vim.cmd("hi Normal guibg=#101012")
vim.cmd("hi NormalNC guibg=#191919")
vim.cmd("hi NormalFloat guibg=#151519")
vim.cmd("hi FloatBorder guifg=#2C2E2F")

-- cmp completions menu
vim.cmd("hi CmpItemAbbrDeprecated guifg=#3E4450")
vim.cmd("hi CmpItemAbbr guifg=#b7bdc9")
vim.cmd("hi CmpItemAbbrMatchFuzzy guifg=#FCCF67")
vim.cmd("hi CmpItemAbbrMatch guifg=#8AB3F7")
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

vim.cmd("highlight TelescopePreviewBorder guibg=#101011 guifg=#101011")
vim.cmd("highlight TelescopePreviewLine guibg=#27272C")
vim.cmd("highlight TelescopePreviewNormal guibg=#101011 guifg=#BABABE")
vim.cmd("highlight TelescopePreviewTitle guibg=#84A0C6 guifg=#101317")

vim.cmd("highlight TelescopePromptBorder guibg=#121214 guifg=#121214")
vim.cmd("highlight TelescopePromptCounter guibg=#121214 gui=bold guifg=#E6CFA1")
vim.cmd("highlight telescopepromptnormal guibg=#121214 guifg=#bababe")
vim.cmd("highlight TelescopePromptPrefix guibg=#121214 guifg=#6791C9")
vim.cmd("highlight TelescopePromptTitle guibg=#E89982 guifg=#101317")

vim.cmd("highlight TelescopeResultsBorder guibg=#101011 guifg=#101011")
vim.cmd("highlight TelescopeResultsNormal guibg=#101011 guifg=#BABABE")
vim.cmd("highlight TelescopeResultsTitle guibg=#78B892 guifg=#101317")

vim.cmd("highlight TelescopeSelectionCaret guibg=#27272C guifg=#E89982")
vim.cmd("highlight TelescopeSelection guibg=#191b1c guifg=#6791C9")

-- Line Numbers
vim.cmd("hi CursorColumn guibg=#101317")
vim.cmd("hi Cursor guibg=#FFFFFF guifg=#101317")
vim.cmd("hi CursorLineFold guibg=#101317 guifg=#70C0BA")
vim.cmd("hi CursorLine guibg=none")
vim.cmd("hi CursorLineNr gui=bold guifg=#FFFFFF")
vim.cmd("hi CursorLineSign guibg=none")

-- Bufferline
-- vim.cmd("hi BufferLineBackground guibg=#1D1D20")
-- vim.cmd("hi BufferLineBuffer guibg=#14171E guifg=#14171E")
-- vim.cmd("hi BufferLineBufferSelected guibg=#84A0C6 gui=bold guifg=#101317")
-- vim.cmd("hi BufferLineBufferVisible guibg=#14171E guifg=#84A0C6")
-- vim.cmd("hi BufferLineCloseButton guibg=#14171E guifg=#F87070")
-- vim.cmd("hi BufferLinecloseButtonSelected guibg=#84A0C6 guifg=#101317")
-- vim.cmd("hi BufferLineCloseButtonVisible guibg=#14171E guifg=#F87070")
-- vim.cmd("hi BufferLineDuplicate guibg=#14171E guifg=#242A36")
-- vim.cmd("hi BufferLineDuplicateSelected guibg=#14171E guifg=#242A36")
-- vim.cmd("hi BufferLineDuplicateVisible guibg=#14171E guifg=#242A36")
-- vim.cmd("hi BufferLineFill guibg=#0b0b0c guifg=#313743")
-- vim.cmd("hi BufferLineIndicatorSelected guibg=#84A0C6 guifg=#84A0C6")
-- vim.cmd("hi BufferLineIndicatorVisible guibg=#14171E guifg=#14171E")
-- vim.cmd("hi BufferLineModified guibg=#14171E guifg=#79DCAA")
-- vim.cmd("hi BufferLineModifiedSelected guibg=#84A0C6 guifg=#101317")
-- vim.cmd("hi BufferLineModifiedVisible guibg=#14171E guifg=#79DCAA")
-- vim.cmd("hi BufferLineOffsetSeparator guibg=#84A0C6 guifg=#84A0C6")
-- vim.cmd("hi BufferLinePick guibg=#14171E gui=bold guifg=#D997C8")
-- vim.cmd("hi BufferLinePickSelected guibg=#84A0C6 gui=bold guifg=#E6CFA1")
-- vim.cmd("hi BufferLinePickVisible guibg=#14171E gui=bold guifg=#FCCF67")
-- vim.cmd("hi BufferLineSeparator guibg=#14171E guifg=#14171E")
-- vim.cmd("hi BufferLineSeparatorSelected guibg=#84A0C6 guifg=#84A0C6")
-- vim.cmd("hi BufferLineSeparatorVisible guibg=#14171E guifg=#14171E")
-- vim.cmd("hi BufferLineTabClose guibg=#1D1D20 guifg=#F87070")
-- vim.cmd("hi BufferLineTab guibg=#14171E guifg=#242A36")
-- vim.cmd("hi BufferLineTabSelected guibg=#101317 gui=bold")
-- vim.cmd("hi BufferLineTabSeparator guibg=#14171E")
-- vim.cmd("hi BufferLineTabSeparatorSelected guifg=#101317")
-- vim.cmd("hi BufferLineTabSeparatorSelected guifg=#101317")
-- vim.cmd("hi BufferLineTabSeparatorSelected guifg=#101317")

-- Neo Tree Higlights
vim.cmd("hi NeoTreeDirectoryIcon guifg=#BDCBD6")
vim.cmd("hi NeoTreeNormalNC guibg=#111214")
vim.cmd("hi NeoTreeNormal guibg=#161719")
vim.cmd("hi NeoTreeFloatTitle guibg=#84A0C6")

-- Monark Highlighting
vim.cmd("hi monarkVisual guifg=#6791C9")
vim.cmd("hi monarkInsert guifg=#78B892")
vim.cmd("hi monarkNormal guifg=#E89982")

-- Rnvimr Highlighting
vim.cmd("hi RnvimrNormal guibg=#101011 guifg=#BDCBD6")

-- Notify
vim.cmd('hi NotifyBackground guibg=#101317 guifg=#D4D4D5')

vim.cmd('hi NotifyDEBUGBody guibg=#101011 guifg=#C397D8')
vim.cmd('hi NotifyDEBUGBorder guibg=#101011 guifg=#101011')
vim.cmd('hi NotifyDEBUGIcon guibg=#101011 guifg=#B77EE0')
vim.cmd('hi NotifyDEBUGTitle guibg=#101011 guifg=#C397D8')
vim.cmd('hi NotifyERRORBody guibg=#101011 guifg=#F87070')
vim.cmd('hi NotifyERRORBorder guibg=#101011 guifg=#101011')
vim.cmd('hi NotifyERRORIcon guibg=#101011 guifg=#FB7373')
vim.cmd('hi NotifyERRORTitle guibg=#101011 guifg=#F87070')
vim.cmd('hi NotifyINFOBody guibg=#101011 guifg=#809BBF')
vim.cmd('hi NotifyINFOBorder guibg=#101011 guifg=#101011')
vim.cmd('hi NotifyINFOIcon guibg=#101011 guifg=#5FB0FC')
vim.cmd('hi NotifyINFOTitle guibg=#101011 guifg=#809BBF')

vim.cmd('hi NotifyLogTime guifg=#515C68')
vim.cmd('hi NotifyLogTitle guifg=#FB7373')

vim.cmd('hi NotifyTRACEBody guibg=#101011 guifg=#79DCAA')
vim.cmd('hi NotifyTRACEBorder guibg=#101011 guifg=#101011')
vim.cmd('hi NotifyTRACEIcon guibg=#101011 guifg=#36C692')
vim.cmd('hi NotifyTRACETitle guibg=#101011 guifg=#79DCAA')

vim.cmd('hi NotifyWARNBody guibg=#101011 guifg=#FFE59E')
vim.cmd('hi NotifyWARNBorder guibg=#101011 guifg=#101011')
vim.cmd('hi NotifyWARNIcon guibg=#101011 guifg=#FCCF67')
vim.cmd('hi NotifyWARNTitle guibg=#101011 guifg=#FFE59E')


-- Indent Blank Line
vim.cmd('hi IndentBlanklineChar guifg=#22272C')
vim.cmd('hi IndentBlanklineContextChar guifg=#7AB0DF')
vim.cmd('hi IndentBlanklineContextStart guibg=#16191F')

-- Lsp Saga
vim.cmd('hi SagaNormal guibg=#101011')
