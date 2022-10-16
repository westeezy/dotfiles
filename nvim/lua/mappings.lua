local map = require('utils').map

vim.g.mapleader = ' '

map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')

--Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true})

--Add leader shortcuts
map('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
map('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]])
map('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
map('n', '<leader>fd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
map('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
map('n', '<leader>ft', [[<cmd>lua require('telescope.builtin').tags()<CR>]])
map('n', '<leader>fp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
map('n', '<leader>fo', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]])
map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])

-- Diagnostic keymaps
map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')

