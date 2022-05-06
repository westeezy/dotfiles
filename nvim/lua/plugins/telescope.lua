local map = require('utils').map

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native
require('telescope').load_extension 'fzf'

--Add leader shortcuts
map('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
map('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]])
map('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
map('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
map('n', '<leader>ft', [[<cmd>lua require('telescope.builtin').tags()<CR>]])
map('n', '<leader>fd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
map('n', '<leader>fp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
map('n', '<leader>fo', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]])
map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])

