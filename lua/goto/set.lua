require('telescope').setup{
   defaults = {
      file_ignore_patterns = {".git/", "node_modules"}
   }
}

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true
   
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.g.mapleader = " "

vim.g.gruvbox_contrast_dark='hard'
vim.g.gruvbox_contrast_light='hard'
