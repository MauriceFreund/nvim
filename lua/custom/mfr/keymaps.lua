-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Close File' })

vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Exit normal mode' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection down' })

vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste without losing the register' })

vim.keymap.set('n', '<leader>o', 'o<Esc>', { desc = 'Create empy line without entering insert mode' })

vim.keymap.set('n', '<leader>d', '"_d', { desc = 'Delete to void register' })
vim.keymap.set('v', '<leader>d', '"_d', { desc = 'Delete to void register' })

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'search/replace the word under the cursor' })

-- quick write
vim.keymap.set('n', '<leader>w', function()
  vim.cmd 'w'
end, { desc = 'Quick [w]rite' })

vim.keymap.set('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>', { silent = true, desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<cmd> TmuxNavigateDown<CR>', { silent = true, desc = 'Move to lower window' })
vim.keymap.set('n', '<C-k>', '<cmd> TmuxNavigateUp<CR>', { silent = true, desc = 'Move to upper window' })
vim.keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>', { silent = true, desc = 'Move to right window' })
