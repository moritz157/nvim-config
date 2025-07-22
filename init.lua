require("moritz157")

vim.lsp.enable({ 'luals', 'gopls', 'angularls', 'eslint', 'ts_ls', 'phpactor', 'sqruff' })

vim.cmd[[set completeopt+=menuone,noselect,popup]]
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.o.winborder = 'rounded'

vim.diagnostic.config({
  virtual_lines = true
})
-- vim.lsp.config('luals', {
--   on_init = function()
--     print('luals now runs in the background')
--   end,
-- })
