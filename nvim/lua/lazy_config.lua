local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  --Plugins Here

  -- General Useful Plugins
  'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',

  -- LSP
  {
    'williamboman/mason.nvim',            -- LSP Manager
    'williamboman/mason-lspconfig.nvim',  -- Mason -> LSP Config
    'neovim/nvim-lspconfig',              -- LSP Configuration Manager
  },

  -- Completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',       -- LSP completions
  'hrsh7th/cmp-buffer',         -- Buffer Completions
  'hrsh7th/cmp-path',           -- Path completions
  'hrsh7th/cmp-cmdline',        -- CMD Line completions
  'saadparwaiz1/cmp_luasnip',   -- snippet completions
  'hrsh7th/cmp-nvim-lua',       -- Nvim config completions

  -- Snippets
  'L3MON4D3/LuaSnip',                 -- snippet engine
  'rafamadriz/friendly-snippets',     -- VS Code-like completions

  -- Greeter
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',  -- Fuzzy Finder
    dependencies = {'nvim-lua/plenary.nvim'}
  },

  -- File Tree
  {
    'nvim-tree/nvim-tree.lua', -- File Tree
    lazy = true,
    dependencies = {'nvim-tree/nvim-web-devicons'}
  },

  -- Oil Nvim
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Integrated Terminal
  'numToStr/FTerm.nvim',  -- Integrated floating terminal

  -- Syntax Highlighting
  {
    'nvim-treesitter/nvim-treesitter', -- Syntax highlighting
    build = ":TSUpdate"
  },

  -- Commenting Manager
  'numToStr/Comment.nvim', -- Block and Line Commenting

  -- Mini
  {
    'echasnovski/mini.nvim', -- A library of helpful plugins (list below)
    version = false
  },

  -- Indentation Line Guides
  'lucastavaresa/simpleIndentGuides.nvim',

  -- Status Line
  'nvim-lualine/lualine.nvim', -- Status line

  -- Buffer Deletion
  'ojroques/nvim-bufdel',
  -- Hex Color Highlighting
  {
    'brenoprata10/nvim-highlight-colors', -- Color highlighter
    lazy = true,
  },

  -- Colorscheme
  -- 'tjdevries/colorbuddy.nvim', -- Custom Color Scheme
  -- 'Mofiqul/vscode.nvim', --VSCode
  -- 'folke/tokyonight.nvim', -- Tokyo Night
  -- 'ellisonleao/gruvbox.nvim', -- Gruvbox
  -- 'marko-cerovac/material.nvim', -- Material
  -- 'navarasu/onedark.nvim', --OneDark
  -- 'catppuccin/nvim', --Catppuccin
  'rmehri01/onenord.nvim',

  -- Transparency
  -- 'xiyaowong/transparent.nvim'
})
