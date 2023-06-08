return {
    -- ############################### GENERALLY USEFUL     #######################################
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',

    -- ############################### COMPLETION           #################################### --
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',                                     -- Path completions
    'hrsh7th/cmp-cmdline',                                  -- CMD Line completions
    'saadparwaiz1/cmp_luasnip',                             -- snippet completions
    'hrsh7th/cmp-nvim-lsp',                                 -- LSP completions
    'hrsh7th/cmp-nvim-lua',                                 -- Nvim config completions

    -- ############################### SNIPPETS             #################################### --
    'L3MON4D3/LuaSnip',                                     -- snippet engine
    'rafamadriz/friendly-snippets',                         -- a bunch of snippets to use

    -- ############################### MASON                #################################### -- 
    'neovim/nvim-lspconfig',
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate"                              -- :MasonUpdate updates registry contents
    },
    'williamboman/mason-lspconfig.nvim',

    -- ############################### TREESITTER           #################################### -- 
    'nvim-treesitter/nvim-treesitter',

    -- ############################### TELESCOPE            #################################### --
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-media-files.nvim',

    -- ############################### LUALINE              #################################### -- 
    {
        'nvim-lualine/lualine.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- ############################### LUALINE              #################################### -- 
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- ############################### WHICH KEY            #################################### --
    {
        "folke/which-key.nvim",
        lazy = true,
    },

    -- ############################### NVIMTREE             #################################### --
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- ############################### AUTOPAIRS            #################################### --
    'windwp/nvim-autopairs',

    -- ############################### INDENT LINES         #################################### --
    'lukas-reineke/indent-blankline.nvim',

    -- ############################### COLOR HIGHLIGHTS     #################################### --
    'brenoprata10/nvim-highlight-colors',

    -- ############################### COLORSCHEME          #################################### --
    'gbprod/nord.nvim',                                     --Nord
    'folke/tokyonight.nvim',                                --Tokyo Night
    {'catppuccin/nvim', name = "catppuccin"},               --Catppuccin 
}
