vim.g.mapleader = ' '

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Organize imports
vim.keymap.set(
  'n',
  '<C-i>',
  ":lua vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })<CR>"
)

-- Reload configuration without restart nvim
vim.keymap.set('n', '<leader>r', ':so %<CR>')

-- Copy to clipboard
vim.keymap.set('v', '<C-c>', '"+y')
