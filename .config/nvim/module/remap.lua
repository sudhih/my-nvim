-- `:h nvim_set_keymap`
local kmap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- `:h mapleader` and `:h vim.g`
vim.g.mapleader = ' '

-- TODO: figure out how to send all modes in one kmap() call
-- quick <ESC>
kmap('n', 'fj', '<ESC>', opt)
kmap('i', 'fj', '<ESC>', opt)
kmap('v', 'fj', '<ESC>', opt)

-- window navigation
kmap('n', '<C-j>', '<C-w>j', opt)
kmap('n', '<C-k>', '<C-w>k', opt)
kmap('n', '<C-h>', '<C-w>h', opt)
kmap('n', '<C-l>', '<C-w>l', opt)

-- buffer navigation
kmap('n', '<C-n>', ':bnext<cr>', opt)
kmap('n', '<C-p>', ':bprevious<cr>', opt)

kmap('n', '<', '[', { silent = true })
kmap('n', '>', ']', { silent = true })
