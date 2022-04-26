local map = require('utils').map


map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')

map('n', '<leader>xx', '<cmd>Trouble<cr>')
map('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>')
map('n', '<leader>xd', '<cmd>Trouble document_diagnostics<cr>')
map('n', '<leader>xl', '<cmd>Trouble loclist<cr>')
map('n', '<leader>xq', '<cmd>Trouble quickfix<cr>')
map('n', 'gR', '<cmd>Trouble lsp_references<cr>')

