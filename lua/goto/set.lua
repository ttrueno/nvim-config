require('telescope').setup {
   defaults = {
      file_ignore_patterns = { ".git/", "node_modules" }
   }
}

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true
vim.opt.textwidth = 0
vim.opt.wrapmargin = 0
vim.cmd("set nowrap")

vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.cmdheight = 1

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.g.mapleader = " "

vim.opt.colorcolumn = "80"

if vim.g.neovide then
   vim.o.guifont = "JetBrainsMonoNL Nerd Font:h13"
   vim.g.neovide_cursor_animation_length = 0.12
   vim.g.neovide_cursor_vfx_mode = "wireframe"
   vim.g.neovide_cursor_vfx_opacity = 200.0
   vim.g.neovide_cursor_vfx_particle_speed = 10.0

   vim.keymap.set("n", "<F11>", function()
      vim.cmd("lua vim.g.neovide_fullscreen = true")
   end)
   vim.keymap.set("n", "<leader><F11>", function()
      vim.cmd("lua vim.g.neovide_fullscreen = false")
   end)
end

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
-- or
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.api.nvim_create_user_command('Rename', function()
   vim.cmd("lua vim.lsp.buf.rename()")
end, {})

vim.g.python3_host_prog = '/home/goto/.local/venv/nvim/bin/python'

vim.cmd('colorscheme vscode')
