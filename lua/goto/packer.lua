vim.cmd [[packadd packer.nvim]]

-- packer

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

--terminal

use {"akinsho/toggleterm.nvim", tag = '*'}

-- automatically created pairs for braces, curly braces and etc.

use {
   "windwp/nvim-autopairs",
   config = function() require("nvim-autopairs").setup {} end
}

-- dev icons

use 'nvim-tree/nvim-web-devicons'

-- game to get good at vim
--
use 'ThePrimeagen/vim-be-good'

-- status-line in the bottom

use {
   'nvim-lualine/lualine.nvim',
   requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

-- previewing .md files

use({
   "iamcco/markdown-preview.nvim",
   run = function() vim.fn["mkdp#util#install"]() end,
})

-- startup-time

use 'lewis6991/impatient.nvim'

-- zen-mode

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

-- file tree

use {
   "nvim-neo-tree/neo-tree.nvim",
   branch = "v2.x",
   requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
   }
}

--PROGRAMMING-LANGUAGES:
-- rust
use 'simrat39/rust-tools.nvim'
-- go
use('fatih/vim-go')

-- git 

use 'lewis6991/gitsigns.nvim'

-- highlighting, error checking and so on

use 'RRethy/vim-illuminate'

use {
   "folke/trouble.nvim",
   requires = "nvim-tree/nvim-web-devicons",
   config = function()
      require("trouble").setup {

      }
   end
}

-- debugging

use 'mfussenegger/nvim-dap'

-- todo-comments

use "folke/todo-comments.nvim"

-- colorshemes 

use 'NLKNguyen/papercolor-theme'
use 'Mofiqul/dracula.nvim'
use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
use 'lifepillar/vim-gruvbox8'
use 'kartikp10/noctis.nvim'
use { "ellisonleao/gruvbox.nvim" }
use 'rebelot/kanagawa.nvim'
use 'Everblush/nvim'
use 'metalelf0/jellybeans-nvim'
use 'luisiacc/gruvbox-baby'
use 'savq/melange-nvim'
use { "bluz71/vim-nightfly-colors", as = "nightfly" }
use 'Shatur/neovim-ayu'
use 'olivercederborg/poimandres.nvim'
use "EdenEast/nightfox.nvim"
use 'dikiaap/minimalist'
use 'reedes/vim-colors-pencil'
use {'nyoom-engineering/oxocarbon.nvim', as = "oxocarbon"}
use {'Mofiqul/vscode.nvim', as = "vscode"}
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

-- split screens
 
use('mrjones2014/smart-splits.nvim')

-- transparency
use 'xiyaowong/transparent.nvim'
end)
