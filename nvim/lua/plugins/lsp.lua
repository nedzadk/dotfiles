require('mason').setup {}
require('mason-lspconfig').setup {
  ensure_installed = { 'lua_ls', 'tsserver', 'jsonls', 'marksman' },
  automatic_installation = true,
}
