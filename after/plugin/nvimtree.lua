require("nvim-tree").setup {
   view = {
      hide_root_folder = true,
      width = 30,
      number = true,
      relativenumber = true,
   }
}

vim.keymap.set("n", "<leader><Tab>", function() 
   vim.cmd("NvimTreeToggle")
end)
