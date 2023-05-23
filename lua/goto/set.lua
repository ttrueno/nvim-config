require('telescope').setup{
   defaults = {
      file_ignore_patterns = {".git/", "node_modules"}
   }
}

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

vim.cmd('colorscheme kanagawa-dragon')
