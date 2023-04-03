require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules", ".git" 
    }
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
