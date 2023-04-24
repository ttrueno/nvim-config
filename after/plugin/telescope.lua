require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules", ".git" 
    }
  }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', function() 
   vim.cmd("Telescope buffers")
   vim.api.nvim_input("<esc>")
end)
vim.keymap.set("n", '<leader>ps', builtin.live_grep)
