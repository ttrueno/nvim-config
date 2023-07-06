require("toggleterm").setup {
   start_in_insert = true,
   direction = 'float',

   float_opts = {
      border = 'single'
   },
}

vim.keymap.set("n", "<leader>t", function()
   vim.cmd("ToggleTerm")
end)
