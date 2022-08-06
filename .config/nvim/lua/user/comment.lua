local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

local status_ok_1, _ = pcall(require, "lsp-inlayhints")
if not status_ok_1 then
  return
end

comment.setup {}
