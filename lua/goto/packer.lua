vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'

   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   use('mbbill/undotree')
   use 'neovim/nvim-lspconfig'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'
   use 'hrsh7th/nvim-cmp'
   use 'L3MON4D3/LuaSnip'
   use 'saadparwaiz1/cmp_luasnip'
   use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
   use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},             -- Required
         {                                      -- Optional
         'williamboman/mason.nvim',
         run = function()
            pcall(vim.cmd, 'MasonUpdate')
         end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
   }
}

use {"akinsho/toggleterm.nvim", tag = '*'}
use {'nyoom-engineering/oxocarbon.nvim', as = "oxocarbon"} 
use {
   "windwp/nvim-autopairs",
   config = function() require("nvim-autopairs").setup {} end
}
use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
use {'Mofiqul/vscode.nvim', as = "vscode"}
use {
   'nvim-lualine/lualine.nvim',
   requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use 'nvim-tree/nvim-web-devicons'
use 'ThePrimeagen/vim-be-good'
use {
   "folke/trouble.nvim",
   requires = "nvim-tree/nvim-web-devicons",
   config = function()
      require("trouble").setup {

      }
   end
}

use('fatih/vim-go')
use({
   "iamcco/markdown-preview.nvim",
   run = function() vim.fn["mkdp#util#install"]() end,
})
use {'sainnhe/gruvbox-material', as = "gruvbox-material"}
use { "ntk148v/komau.vim" }
use 'rockerBOO/boo-colorscheme-nvim'
use {'folke/twilight.nvim', config = function() 
   require("twilight").setup {
      {
         dimming = {
            alpha = 0.25, -- amount of dimming
            color = { "Normal", "#ffffff" },
            term_bg = "#000000", -- if guibg=NONE, this will be used to calculate text color
            inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
         },
         context = 25, -- amount of lines we will try to show around the current line
         treesitter = true, 
         expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
         "function",
      },
      exclude = {}, -- exclude these filetypes
   }
}   
end
}
use 'lewis6991/impatient.nvim'
use 'reedes/vim-colors-pencil'

use {
   "folke/zen-mode.nvim",
   config = function()
      require("zen-mode").setup {
         -- your configuration comes here
         -- or leave it empty to use the default settings
         -- refer to the configuration section below
      }
   end
}

use {
   "nvim-neo-tree/neo-tree.nvim",
   branch = "v2.x",
   requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
   }
}

use 'NLKNguyen/papercolor-theme'
use 'Mofiqul/dracula.nvim'
use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
use 'lifepillar/vim-gruvbox8'
use 'kartikp10/noctis.nvim'
use 'lewis6991/gitsigns.nvim'
use { "ellisonleao/gruvbox.nvim" }
use 'RRethy/vim-illuminate'
use 'mfussenegger/nvim-dap'
use "folke/todo-comments.nvim"
use 's1n7ax/nvim-window-picker'
end)
