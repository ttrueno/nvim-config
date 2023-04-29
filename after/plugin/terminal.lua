require("toggleterm").setup{
   start_in_insert = false,
   direction = 'float',
   float_opts = {
    border = 'curved',
  },
}

vim.keymap.set("n", "<leader>t", function() 
   vim.cmd("ToggleTerm")
end)

