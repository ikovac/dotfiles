local lsp = require('ikovac.lsp')
local null_ls = require('null-ls')

local servers = {
  'jsonls',
  'sumneko_lua',
  'tsserver'
}

lsp.setup(servers)

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.code_actions.eslint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- TODO: Rewrite this for nvim 0.8
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
})

