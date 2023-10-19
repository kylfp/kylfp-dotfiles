local colors  = {
bg = '#121212',
bg2 = '#191919',
bg3 = '#2a2a2a',
bg4 = '#414141',

fg = '#c8c8c8',
fg2 = '#bebebe',
fg3 = '#aaaaaa',
fg4 = '#969696',

black = '#302e31',
red = '#a55377',
green = '#5f9a6c',
yellow = '#d9c793',
orange = '#cc9964',
blue = '#2f88ff',
magenta = '#8853c7',
cyan = '#6dabd6',
white = '#dcefff'
}

local function arch()
    return [[󰣇 ]]
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = {
            normal = {
                a = {bg = colors.blue, fg = colors.bg, gui = 'bold'},
                b = {bg = colors.bg3, fg = colors.blue},
                c = {bg = colors.bg1, fg = colors.blue}
            },
            insert = {
                a = {bg = colors.magenta, fg = colors.bg, gui = 'bold'},
                b = {bg = colors.bg3, fg = colors.magenta},
                c = {bg = colors.bg1, fg = colors.magenta}
            },
            visual = {
                a = {bg = colors.yellow, fg = colors.bg, gui = 'bold'},
                b = {bg = colors.bg3, fg = colors.yellow},
                c = {bg = colors.bg1, fg = colors.yellow}
            },
            replace = {
                a = {bg = colors.green, fg = colors.bg, gui = 'bold'},
                b = {bg = colors.bg3, fg = colors.green},
                c = {bg = colors.bg1, fg = colors.green}
            },
            command = {
                a = {bg = colors.red, fg = colors.bg, gui = 'bold'},
                b = {bg = colors.bg3, fg = colors.red},
                c = {bg = colors.bg1, fg = colors.red}
            },
            inactive = {
                a = {bg = colors.fg4, fg = colors.bg, gui = 'bold'},
                b = {bg = colors.fg4, fg = colors.bg},
                c = {bg = colors.fg4, fg = colors.bg}
            }
        },
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'searchcount', 'diagnostics', 'filetype', { arch } },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        -- lualine_c = {
        --     {
        --         'buffers',
        --         mode = 2,
        --         symbols = {
        --             modified = ''
        --         }
        --     }
        -- }
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
