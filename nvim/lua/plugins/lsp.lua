local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'html',
    'cssls',
    'lua_ls',
  }
})

require('mason-lspconfig').setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
  ['tsserver'] = function()
    lspconfig.tsserver.setup({
      settings = {
        completions = {
          completeFunctionCalls = true
        }
      }
    })
  end,
})

-- Change text to icons in gutter for diagnostics
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({ name = 'DiagnosticSignError', text = '✘' })
sign({ name = 'DiagnosticSignWarn', text = '▲' })
sign({ name = 'DiagnosticSignHint', text = '⚑' })
sign({ name = 'DiagnosticSignInfo', text = '' })

-- Diagnostic settings for LSP
vim.diagnostic.config {
  virtual_text = false,
  severity_sort = true,
  underline = false,
  signs = true,
  float = {
    border = 'rounded',
    source = 'always',
  }
}

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = 'rounded' }
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  { border = 'rounded' }
)

-- Keymaps for LSP
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<leader>gf', '<cmd>Lspsaga lsp_finder<CR>', opts)
    vim.keymap.set('n', '<leader>gd', '<cmd>Lspsaga goto_definition<CR>', opts)
    vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
    vim.keymap.set('n', '<leader>gr', '<cmd>Lspsaga rename<CR>', opts)
    vim.keymap.set('n', '<leader>sl', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
    vim.keymap.set('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
    vim.keymap.set('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
    vim.keymap.set('n', '<leader><leader>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
