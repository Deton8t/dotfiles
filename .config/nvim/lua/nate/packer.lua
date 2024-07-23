-- This file can be loaded by calling `lua require('plugins')` from your init.vim
require("nate.remap")
vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}

  use({'rose-pine/neovim', as = 'rose-pine'})
  use "EdenEast/nightfox.nvim"
  use(
       'nvim-treesitter/nvim-treesitter',
       {run = ':TSUpdate'}
       )
  use 'nvim-treesitter/playground'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

          -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {"hrsh7th/cmp-nvim-lua"},
		  {"L3MON4D3/LuaSnip"},
		  {"rafamadriz/friendly-snippets"}
	  }
    }
      use 'mhartington/formatter.nvim'
      use 'HiPhish/gradle.nvim'
      use 'christoomey/vim-tmux-navigator'
      use {
          "folke/which-key.nvim",
          config = function()
              vim.o.timeout = true
              vim.o.timeoutlen = 300
              require("which-key").setup {
                  -- your configuration comes here
                  -- or leave it empty to use the default settings
                  -- refer to the configuration section below
             }
          end
	}
     use 'ryanoasis/vim-devicons'
     use {
         'nvim-lualine/lualine.nvim',
         requires = { 'ryanoasis/vim-devicons', opt = true }
     }
     use 'hrsh7th/nvim-cmp'
     use({
         "epwalsh/obsidian.nvim",
         tag = "*",  -- recommended, use latest release instead of latest commit
         requires = {
             -- Required.
             "nvim-lua/plenary.nvim",

             -- see below for full list of optional dependencies 👇
         },
     })
     use 'mfussenegger/nvim-dap'
     use 'mfussenegger/nvim-jdtls'
     use 'nvim-lua/plenary.nvim'
     use "stevearc/oil.nvim"
     use 'nvim-tree/nvim-web-devicons'
     use({
         "epwalsh/pomo.nvim",
         tag = "*",  -- Recommended, use latest release instead of latest commit
         requires = {
             -- Optional, but highly recommended if you want to use the "Default" timer
             "rcarriga/nvim-notify",
         },
     })
     use 'nvim-tree/nvim-tree.lua'
     use({
         "folke/todo-comments.nvim",
         requires = { "nvim-lua/plenary.nvim" },
     })
     use {
         "iurimateus/luasnip-latex-snippets.nvim",
         -- vimtex isn't required if using treesitter
         requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
         config = function()
             require'luasnip-latex-snippets'.setup({ use_treesitter = false })
             require("luasnip").config.setup { enable_autosnippets = true }
         end,
     }
     use 'Ullreich/wordcount.nvim'
     use "jbyuki/quickmath.nvim"
     use 'Apeiros-46B/qalc.nvim'
     use 'Issafalcon/lsp-overloads.nvim'
     use 'ThePrimeagen/harpoon'
     use 'gbprod/substitute.nvim'
 end)

