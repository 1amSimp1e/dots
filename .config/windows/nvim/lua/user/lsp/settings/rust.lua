return {
  tools = {
    -- autoSetHints = false,
    on_initialized = function()
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" }, {
        pattern = { "*.rs" },
        callback = function()
          vim.lsp.codelens.refresh()
        end,
      })
    end,

    auto = false,
    inlay_hints = {
      -- Only show inlay hints for the current line
      only_current_line = false,
      auto = false,

      -- Event which triggers a refersh of the inlay hints.
      -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
      -- not that this may cause higher CPU usage.
      -- This option is only respected when only_current_line and
      -- autoSetHints both are true.
      only_current_line_autocmd = "CursorHold",

      -- whether to show parameter hints with the inlay hints or not
      -- default: true
      show_parameter_hints = false,

      -- whether to show variable name before type hints with the inlay hints or not
      -- default: false
      show_variable_name = false,

      -- prefix for parameter hints
      -- default: "<-"
      -- parameter_hints_prefix = "<- ",
      parameter_hints_prefix = " ",

      -- prefix for all the other hints (type, chaining)
      -- default: "=>"
      -- other_hints_prefix = "=> ",
      other_hints_prefix = " ",

      -- whether to align to the lenght of the longest line in the file
      max_len_align = false,

      -- padding from the left if max_len_align is true
      max_len_align_padding = 1,

      -- whether to align to the extreme right or not
      right_align = false,

      -- padding from the right if right_align is true
      right_align_padding = 7,

      -- The color of the hints
      highlight = "Comment",
    },
    hover_actions = {
      auto_focus = false,
      border = "rounded",
      width = 60,
      -- height = 30,
    },
  },
  server = {
    --[[
        $ mkdir -p ~/.local/bin
        $ curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
        $ chmod +x ~/.local/bin/rust-analyzer
    --]]
    -- cmd = { os.getenv "HOME" .. "/.local/bin/rust-analyzer" },
    cmd = { "rustup", "run", "nightly", os.getenv "HOME" .. "/.local/bin/rust-analyzer" },
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,

    settings = {
      ["rust-analyzer"] = {
        lens = {
          enable = true,
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}
-- return {
--   settings = {
--     rust_analyzer = {
--       inlayHints = {
--         bindingModeHints = {
--           enable = true,
--         },
--         typeHints = {
--           enable = true,
--           hideClosureInitialization = false,
--           hideNamedConstructor = false,
--         },
--         chainingHints = {
--           enable = true,
--         },
--         closingBraceHints = {
--           enable = true,
--           minLines = 25,
--         },
--         closureReturnTypeHints = {
--           enable = "never",
--         },
--         lifetimeElisionHints = {
--           enable = "never",
--           useParameterNames = false,
--           maxLength = 25,
--         },
--         parameterHints = {
--           enable = true,
--         },
--         reborrowHints = {
--           enable = "never",
--         },
--         renderColons = true,
--       },
--     },
--   },
-- }
