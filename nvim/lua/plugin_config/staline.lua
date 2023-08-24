require('staline').setup {
    defaults = {
        expand_null_ls = false,  -- This expands out all the null-ls sources to be shown
        left_separator  = "",
        right_separator = "",
        full_path       = false,
        line_column     = "%l:%c 󰕱%p%% ", -- `:h stl` to see all flags.

        fg              = "#1f2329",  -- Foreground text color.
        bg              = "none",     -- Default background is transparent.
        inactive_color  = "#303030",
        inactive_bgcolor = "none",
        true_colors     = false,      -- true lsp colors.
        font_active     = "none",     -- "bold", "italic", "bold,italic", etc

        mod_symbol      = " ",
        lsp_client_symbol = " ",
        branch_symbol   = " ",
        cool_symbol     = "󰣇 ",       -- Change this to override default OS icon.
        null_ls_symbol = "",          -- A symbol to indicate that a source is coming from null-ls
    },
    mode_colors = {
        -- TokyoNight
        -- n = "#9ece6a",
        -- i = "#9d7cd8",
        -- c = "#ff9e64",
        -- v = "#7aa2f7",

        -- Gruvbox
        -- n = "#b8bb26",
        -- i = "#fb4934",
        -- c = "#fabd2f",
        -- v = "#83a598",
        --
        -- One Dark Darker
        n = "#8ebd6b",
        i = "#e55561",
        c = "#e2b86b",
        v = "#4fa6ed",

    },
    mode_icons = {
        n = " ",
        i = "󰗧 ",
        c = " ",
        v = "󰊪 ",   -- etc..
    },
    sections = {
        left = { 'right_sep_double', '-mode', 'left_sep_double', ' ','right_sep_double', '-cwd', '-file_name', 'left_sep_double', 'branch' },
        mid  = { 'right_sep_double', '-lsp', '-lsp_name', 'left_sep_double' },
        right = { 'right_sep_double', '-cool_symbol', 'left_sep_double', ' ', 'right_sep_double', '-line_column', 'left_sep_double'},
    },
    inactive_sections = {
        left = { 'branch' },
        mid  = { 'file_name' },
        right = { 'line_column' }
    },
    special_table = {
        NvimTree = { 'NvimTree', '󰙅 ' },
    },
    lsp_symbols = {
        Error=" ",
        Info=" ",
        Warn=" ",
        Hint="",
    },
}
