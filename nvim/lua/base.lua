vim.g.mapleader = ' '
vim.o.conceallevel = 0
vim.o.cmdheight = 2
vim.o.pumheight = 10 
vim.o.showmode = true
vim.o.showtabline = 2
vim.o.title = true
vim.o.termguicolors = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'yes'
vim.wo.cursorline = true

vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.backup = false

vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.wildmode = "longest,full"

vim.opt.swapfile = false

vim.diagnostic.config {
	virtual_text = false,
	underine = false,
	signs = true
}
