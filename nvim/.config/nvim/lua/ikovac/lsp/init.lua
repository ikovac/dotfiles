local lspconfig = require('lspconfig')
local lsp_installer = require('nvim-lsp-installer')

local M = {}

local capabilities = require('cmp_nvim_lsp')
  .update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function on_attach(client, bufnr)
  if client.name == 'tsserver' then
    client.resolved_capabilities.document_formatting = false
  end

  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ac', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '[g', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']g', vim.diagnostic.goto_next, opts)
end

local function setup(servers)
  lsp_installer.setup({ ensure_installed = servers })

  for _, server in ipairs(servers) do
    local opts = { on_attach = on_attach, capabilities = capabilities }
    local has_custom_opts, server_custom_opts = pcall(
      require,
      'ikovac.lsp.settings.' .. server
    )
    if has_custom_opts then
      opts = vim.tbl_deep_extend('force', server_custom_opts, opts)
    end
    lspconfig[server].setup(opts)
  end
end

M.setup = setup

return M
