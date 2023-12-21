require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "html" },
  syn_install = false,
  highlight = { enable = true },
  indent = { enable = true },
}
