require("toggleterm").setup{
   start_in_insert = true,
   direction = 'float',
   winbar = {
      enabled = true,
      name_formatter = function(term) 
         return term.name
      end
   },
}

vim.keymap.set("n", "<leader>t", function() 
   vim.cmd("ToggleTerm")
end)

