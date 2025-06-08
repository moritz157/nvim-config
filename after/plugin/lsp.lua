-- local lsp = require("lsp-zero").preset {}
--
-- lsp.ensure_installed {
--   "eslint",
--   "gopls",
-- }
--
-- lsp.on_attach(function(client, bufnr)
--   -- see :help lsp-zero-keybindings
--   -- to learn the available actions
--   lsp.default_keymaps { buffer = bufnr }
-- end)
--
-- -- (Optional) Configure lua language server for neovim
-- require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
--
-- lsp.setup()




-- local cmp = require "cmp"
--
-- cmp.setup {
--   sources = {
--     { name = "nvim_lsp" },
--   },
--   snippet = {
--     expand = function(args)
--       -- You need Neovim v0.10 to use vim.snippet
--       vim.snippet.expand(args.body)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert {
--     ["<C-Space>"] = cmp.mapping.complete {},
--   },
-- }
