-- Useful, don't touch
local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

-- Shorten Function Name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"

-- NORMAL --
keymap("n", "<leader>w", "<Cmd>w<CR>", opts)
keymap("n", "<leader>nh", "<Cmd>noh<CR>", opts)

-- Move Between Windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Move Between Buffers
keymap('n', '<leader>.', ':bnext<CR>', opts)
keymap('n', '<leader>,', ':bprev<CR>', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- INSERT --

-- VISUAL --
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- VISUAL BLOCK --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
-- -----------------------------------------------------------------------------
-- PLUGIN KEYBINDINGS --

-- Nvimtree
keymap("n", "<leader>4", ":NvimTreeToggle<cr>", opts)
--keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Mini Completion
-- keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
-- keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })

-- Telescope
keymap("n", "<leader>1", ":Telescope find_files prompt_prefix=󰙅 <cr>", opts)
keymap("n", "<leader>2", ":Telescope buffers prompt_prefix=󱦞 <cr>", opts)
keymap("n", "<leader>9", ":Telescope live_grep prompt_prefix=󰭎 <cr>", opts)
keymap("n", "<leader>0", ":Telescope current_buffer_fuzzy_find prompt_prefix= <cr>", opts)

-- FTerm
keymap('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', opts)
keymap('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

-- Oil
keymap("n", "<leader>3", ":Oil<CR>", { desc = "Open parent directory" })

-- Highlight Colors
keymap('n', '<leader>hc', ':HighlightColorsToggle<CR>', opts)

-- BufDel
keymap('n', '<leader>q', ':BufDel<CR>', opts)
